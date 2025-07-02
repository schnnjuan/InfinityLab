import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:infinitylab/data/fusion_manager.dart';
import 'package:infinitylab/data/element_model.dart';

class InventoryUI extends StatelessWidget {
  const InventoryUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FusionManager>(
      builder: (context, fusionManager, child) {
        final discoveredElements = fusionManager.discoveredElements;
        return Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: 100, // Width of the inventory column
            color: Colors.grey[800],
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: discoveredElements.length,
              itemBuilder: (context, index) {
                final element = discoveredElements[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Draggable<ElementModel>(
                    data: element,
                    feedback: Material(
                      color: Colors.transparent,
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
                            style: const TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    ),
                    childWhenDragging: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[700]!.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          element.emoji,
                          style: const TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
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
                          style: const TextStyle(fontSize: 30),
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
