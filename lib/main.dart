import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:infinitylab/data/element_model.dart';
import 'package:infinitylab/data/fusion_manager.dart';
import 'package:infinitylab/ui/theme.dart';
import 'package:infinitylab/components/inventory_ui.dart';
import 'package:infinitylab/ui/discovery_log.dart'; // Import DiscoveryLog

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => FusionManager(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final List<Map<String, dynamic>> _droppedElementsWithPosition = [];
  double _fusionAreaOpacity = 1.0;

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
    await Provider.of<FusionManager>(context, listen: false).loadFusions();
  }

  @override
  void dispose() {
    _successPlayer.dispose();
    _errorPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 4, 4, 5),
        body: Row(
          children: [
            // Discovery Log (Left Panel)
            const DiscoveryLog(),

            // Main Fusion Area
            Expanded(
              child: DragTarget<ElementModel>(
                builder: (BuildContext context, List<ElementModel?> candidateData, List<dynamic> rejectedData) {
                  return Container(
                    color: Colors.transparent, // Make it transparent to show the background
                    child: AnimatedOpacity(
                      opacity: _fusionAreaOpacity,
                      duration: const Duration(milliseconds: 500),
                      child: Stack(
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
                            }),
                          );
                        }).toList(),
                      ),
                    ),
                  );
                },
                onWillAcceptWithDetails: (data) => true,
                onAcceptWithDetails: (details) async {
                  setState(() {
                    final RenderBox renderBox = context.findRenderObject() as RenderBox;
                    final localPosition = renderBox.globalToLocal(details.offset);

                    _droppedElementsWithPosition.add({
                      'element': details.data,
                      'position': localPosition,
                    });
                  });

                  if (_droppedElementsWithPosition.length == 2) {
                    final fusionManager = Provider.of<FusionManager>(context, listen: false);
                    final result = FusionManager.getFusionResult([
                      _droppedElementsWithPosition[0]['element'],
                      _droppedElementsWithPosition[1]['element'],
                    ]);

                    if (result != null) {
                      print('Fusion successful! New element: ${result.name}');
                      await _successPlayer.resume();
                      fusionManager.addDiscoveredElement(result);
                    } else {
                      print('No fusion found for these elements.');
                      await _errorPlayer.resume();
                    }

                    setState(() {
                      _fusionAreaOpacity = 0.0;
                    });
                    await Future.delayed(const Duration(milliseconds: 500));
                    setState(() {
                      _droppedElementsWithPosition.clear();
                      _fusionAreaOpacity = 1.0;
                    });
                  }
                },
              ),
            ),

            // Inventory (Right Panel)
            const InventoryUI(),
          ],
        ),
      ),
    );
  }

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
      childWhenDragging: const SizedBox(width: 80, height: 80),
      onDraggableCanceled: (velocity, offset) {
        onPositionUpdate(element, offset);
      },
      child: Container(
        width: 80,
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
              style: AppTextStyles.logEntry,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}