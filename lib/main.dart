import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:infinitylab/game/infinity_lab_game.dart';
import 'package:infinitylab/ui/theme.dart';
import 'package:infinitylab/data/fusion_manager.dart';
import 'package:infinitylab/components/inventory_ui.dart';
import 'package:infinitylab/ui/discovery_log.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FusionManager().loadFusions();
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
  late final InfinityLabGame game;

  @override
  void initState() {
    super.initState();
    game = InfinityLabGame();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      home: Scaffold(
        backgroundColor: AppColors.background,
        body: Stack(
          children: [
            Positioned.fill(
              child: GameWidget(game: game),
            ),
            Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        // Discovery Log (Left Panel)
                        Container(
                          width: 160,
                          margin: const EdgeInsets.only(right: 16.0),
                          padding: const EdgeInsets.all(12.0),
                          decoration: const BoxDecoration(
                            color: AppColors.panelBackground,
                            border: Border(right: BorderSide(color: AppColors.borderColor, width: 1.0)),
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Discovery Log',
                                style: AppTextStyles.uppercaseTitle,
                              ),
                              Expanded(
                                child: DiscoveryLog(),
                              ),
                            ],
                          ),
                        ),

                        // Main Fusion Area (now handled by Flame components)
                        Expanded(
                          child: Container(), // This area is now managed by Flame components
                        ),

                        // Side Panel (Right)
                        Container(
                          width: 160,
                          margin: const EdgeInsets.only(left: 16.0),
                          padding: const EdgeInsets.all(12.0),
                          decoration: const BoxDecoration(
                            color: AppColors.panelBackground,
                            border: Border(left: BorderSide(color: AppColors.borderColor, width: 1.0)),
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          ),
                          child: const Column(
                            children: [],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Inventory (Bottom Panel)
                Container(
                  height: 112,
                  padding: const EdgeInsets.all(12.0),
                  decoration: const BoxDecoration(
                    color: AppColors.inventoryBackground,
                    border: Border(top: BorderSide(color: AppColors.borderColor, width: 1.0)),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Inventory',
                        style: AppTextStyles.uppercaseTitle,
                      ),
                      const SizedBox(height: 8.0),
                      Expanded(
                        child: InventoryUI(game: game), // Pass the game instance
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
}
