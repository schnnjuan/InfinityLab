import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:infinitylab/game/infinity_lab_game.dart';
import 'package:infinitylab/ui/theme.dart';
import 'package:infinitylab/data/element_model.dart';
import 'package:infinitylab/data/fusion_manager.dart'; // Import FusionManager
import 'package:audioplayers/audioplayers.dart'; // Import audioplayers
// For random positioning
// For Offset

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final List<ElementModel> _elements = [ // Removed const here as elements will be added dynamically
    const ElementModel(id: 'fire', name: 'Fogo', emoji: '🔥', description: 'Elemento básico', category: 'Básico'),
    const ElementModel(id: 'water', name: 'Água', emoji: '💧', description: 'Elemento básico', category: 'Básico'),
    const ElementModel(id: 'earth', name: 'Terra', emoji: '🌍', description: 'Elemento básico', category: 'Básico'),
    const ElementModel(id: 'air', name: 'Ar', emoji: '💨', description: 'Elemento básico', category: 'Básico'),
  ];

  // List to hold elements dropped into Fusion Area with their positions
  final List<Map<String, dynamic>> _droppedElementsWithPosition = [];
  double _fusionAreaOpacity = 1.0; // For animation

  late AudioPlayer _successPlayer;
  late AudioPlayer _errorPlayer;

  @override
  void initState() {
    super.initState();
    _loadFusionData();
    _successPlayer = AudioPlayer();
    _errorPlayer = AudioPlayer();
    _loadSounds();
  }

  Future<void> _loadSounds() async {
    await _successPlayer.setSource(AssetSource('audio/success.wav'));
    await _errorPlayer.setSource(AssetSource('audio/error.ogg'));
  }

  Future<void> _loadFusionData() async {
    await FusionManager().loadFusions();
    // Optionally, add discovered elements to _elements list if they are not already there
    // For now, _elements is static, but in a real game, it would be dynamic.
  }

  @override
  void dispose() {
    _successPlayer.dispose();
    _errorPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final game = InfinityLabGame(); // Instantiate the game once

    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Roboto', // Set a default font family for the app
      ),
      home: Scaffold(
        backgroundColor: AppColors.background,
        body: Stack(
          children: [
            // Game Widget as the base layer
            Positioned.fill(
              child: GameWidget(game: game),
            ),
            // Overlay for UI elements
            Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0), // Equivalent to p-4
                    child: Row(
                      children: [
                        // Discovery Log (Left Panel)
                        Container(
                          width: 160, // Equivalent to w-40 (160px)
                          margin: const EdgeInsets.only(right: 16.0), // Equivalent to gap-4
                          padding: const EdgeInsets.all(12.0), // Equivalent to p-3
                          decoration: const BoxDecoration(
                            color: AppColors.panelBackground,
                            border: Border(right:  BorderSide(color: AppColors.borderColor, width: 1.0)),
                            borderRadius: BorderRadius.all(Radius.circular(8.0)), // Added rounded corners
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Discovery Log',
                                style: AppTextStyles.uppercaseTitle,
                              ),
                              
                            ],
                          ),
                        ),

                        // Main Fusion Area
                        Expanded(
                          child: Center(
                            child: DragTarget<ElementModel>(
                              builder: (BuildContext context, List<ElementModel?> candidateData, List<dynamic> rejectedData) {
                                return GestureDetector(
                                  onTap: () {
                                  print('Fusion Area tapped!');
                                  },
                                  child: Container(
                                    // Removed fixed height and width to make it fill the available space
                                    // The GestureDetector still makes it interactive
                                    child: AnimatedOpacity(
                                      opacity: _fusionAreaOpacity,
                                      duration: const Duration(milliseconds: 500), // Animation duration
                                      child: SizedBox.expand( // Use SizedBox.expand to fill available space
                                        child: Stack( // Use Stack for free positioning
                                          children: _droppedElementsWithPosition.map((item) {
                                          final element = item['element'] as ElementModel;
                                          final position = item['position'] as Offset;
                                          return Positioned(
                                            left: position.dx,
                                            top: position.dy,
                                            child: _buildDroppedElementBox(element, position, (movedElement, globalOffset) {
                                              setState(() {
                                                final RenderBox fusionAreaRenderBox = context.findRenderObject() as RenderBox;
                                                final localPosition = fusionAreaRenderBox.globalToLocal(globalOffset);

                                                int index = _droppedElementsWithPosition.indexWhere((item) => item['element'] == movedElement);
                                                if (index != -1) {
                                                  _droppedElementsWithPosition[index]['position'] = localPosition;
                                                }
                                              });
                                            }), // New method to build element box
                                          );
                                        }).toList(),
                                      )), // Stack closing parenthesis and SizedBox.expand closing parenthesis
                                    ), // AnimatedOpacity closing parenthesis
                                  ), // Container closing parenthesis
                                ); // GestureDetector closing parenthesis
                              }, // builder function closing curly brace
                              onWillAcceptWithDetails: (data) => true, // Accept any ElementModel
                              onAcceptWithDetails: (details) async { // Use onAcceptWithDetails to get position
                                setState(() {
                                  // Calculate position relative to the DragTarget
                                  final RenderBox renderBox = context.findRenderObject() as RenderBox;
                                  final localPosition = renderBox.globalToLocal(details.offset);

                                  _droppedElementsWithPosition.add({
                                    'element': details.data,
                                    'position': localPosition,
                                  });
                                });

                                if (_droppedElementsWithPosition.length == 2) {
                                  final result = FusionManager.getFusionResult([
                                    _droppedElementsWithPosition[0]['element'],
                                    _droppedElementsWithPosition[1]['element'],
                                  ]);

                                  if (result != null) {
                                    print('Fusion successful! New element: ${result.name}');
                                    await _successPlayer.resume(); // Play success sound
                                    // Add new element to inventory if not already there
                                    // This is a simplified way. In a real game, _elements would be a state variable.
                                    // For now, we'll just print that it would be added.
                                    print('New element ${result.name} would be added to inventory.');
                                  } else {
                                    print('No fusion found for these elements.');
                                    await _errorPlayer.resume(); // Play error sound
                                  }

                                  // Trigger fade-out animation and then clear elements
                                  setState(() {
                                    _fusionAreaOpacity = 0.0;
                                  });
                                  await Future.delayed(const Duration(milliseconds: 500)); // Wait for animation
                                  setState(() {
                                    _droppedElementsWithPosition.clear();
                                    _fusionAreaOpacity = 1.0; // Reset opacity for next fusion
                                  });
                                } else {
                                  // If no fusion, elements remain in the fusion area.
                                  // No need to clear _droppedElementsWithPosition or reset opacity.
                                }
                              },
                            ),
                          ),
                        ),

                        // Side Panel (Right)
                        Container(
                          width: 160,
                          margin: const EdgeInsets.only(left: 16.0),
                          padding: const EdgeInsets.all(12.0),
                          decoration: const BoxDecoration( // Added const
                            color: AppColors.panelBackground,
                            border: Border(left: BorderSide(color: AppColors.borderColor, width: 1.0)), // Added const
                            borderRadius: BorderRadius.all(Radius.circular(8.0)), // Changed to const and all
                          ),
                          child: const Column( // Added child and const
                            children: [], // Empty for now
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Inventory (Bottom Panel)
                Container(
                  height: 112, // Equivalent to h-28 (112px)
                  padding: const EdgeInsets.all(12.0), // Equivalent to p-3
                  decoration: const BoxDecoration(
                    color: AppColors.inventoryBackground,
                    border: Border(top: BorderSide(color: AppColors.borderColor, width: 1.0)),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)), // Added rounded corners
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Inventory',
                        style: AppTextStyles.uppercaseTitle,
                      ),
                      const SizedBox(height: 8.0), // Equivalent to mb-2
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: _elements.map((element) => _buildInventoryItem(element)).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0), // Equivalent to space-y-2
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8.0), // Equivalent to p-2
        decoration: const BoxDecoration(
          color: AppColors.fusionAreaBackground, // bg-[#1a1a1a]
          borderRadius: BorderRadius.all(Radius.circular(4.0)), // rounded
        ),
        child: Center(
          child: Text(
            text,
            style: AppTextStyles.buttonText,
          ),
        ),
      ),
    );
  }

  Widget _buildInventoryItem(ElementModel element) {
    return Draggable<ElementModel>(
      data: element,
      feedback: Material(
        color: Colors.transparent,
        child: Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: AppColors.inventoryItemBg.withOpacity(0.7), // Slightly transparent feedback
            border: Border.all(color: AppColors.borderColor, width: 1.0),
          ),
          child: Center(
            child: Text(
              element.emoji,
              style: AppTextStyles.primary.copyWith(fontSize: 24), // Larger font for emoji
            ),
          ),
        ),
      ),
      childWhenDragging: SizedBox(width: 56, height: 56), // Empty space when dragging
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0), // Equivalent to gap-2
        child: Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: AppColors.inventoryItemBg, // bg-[#1a1a1a]
            border: Border.all(color: AppColors.borderColor, width: 1.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                element.emoji, // Display emoji
                style: AppTextStyles.primary.copyWith(fontSize: 24), // Larger font for emoji
              ),
              Text(
                element.name, // Display name
                style: AppTextStyles.logEntry, // Using logEntry style for name
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // New method to build the box for dropped elements
  Widget _buildDroppedElementBox(ElementModel element, Offset currentPosition, Function(ElementModel, Offset) onPositionUpdate) {
    return Draggable<ElementModel>(
      data: element,
      feedback: Material(
        color: Colors.transparent,
        child: Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: AppColors.fusionAreaBackground.withOpacity(0.7),
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: AppColors.borderColor, width: 1.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                element.emoji,
                style: AppTextStyles.primary.copyWith(fontSize: 32),
              ),
              Text(
                element.name,
                style: AppTextStyles.logEntry,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      childWhenDragging: SizedBox(width: 80, height: 80),
      onDraggableCanceled: (velocity, offset) {
        onPositionUpdate(element, offset);
      },
      child: Container(
        width: 80, // Example size for dropped element box
        height: 80,
        decoration: BoxDecoration(
          color: AppColors.fusionAreaBackground,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: AppColors.borderColor, width: 1.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              element.emoji,
              style: AppTextStyles.primary.copyWith(fontSize: 32),
            ),
            Text(
              element.name,
              style: AppTextStyles.logEntry, // Using logEntry style for name
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}