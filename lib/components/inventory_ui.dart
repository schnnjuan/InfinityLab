import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:infinitylab/data/fusion_manager.dart';
import 'package:infinitylab/components/element_component.dart';
import 'package:infinitylab/game/infinity_lab_game.dart';
import 'package:flame/components.dart';

class InventoryUI extends StatelessWidget {
  final InfinityLabGame game;

  const InventoryUI({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<FusionManager>(
      builder: (context, fusionManager, child) {
        final discoveredElements = fusionManager.discoveredElements;
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 100,
            color: Colors.grey[800],
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: discoveredElements.length,
              itemBuilder: (context, index) {
                final element = discoveredElements[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      // Add the element to the game world at a default position
                      game.addElementAtPosition(
                        ElementComponent(element: element),
                        Vector2(game.size.x / 2, game.size.y / 2), // Center of the game world
                      );
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[700],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          element.emoji,
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
