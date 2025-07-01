import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:infinitylab/data/fusion_manager.dart';

class DiscoveryLog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<FusionManager>(
      builder: (context, fusionManager, child) {
        final discoveredElements = fusionManager.discoveredElements;
        return Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 200,
            height: 300,
            color: Colors.black.withOpacity(0.5),
            child: ListView.builder(
              itemCount: discoveredElements.length,
              itemBuilder: (context, index) {
                final element = discoveredElements[index];
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    '${element.emoji} ${element.name}',
                    style: TextStyle(color: Colors.white, fontSize: 16),
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
