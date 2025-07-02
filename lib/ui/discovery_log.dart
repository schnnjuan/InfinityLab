import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:infinitylab/data/fusion_manager.dart';
import 'package:infinitylab/ui/theme.dart';

class DiscoveryLog extends StatelessWidget {
  const DiscoveryLog({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FusionManager>(
      builder: (context, fusionManager, child) {
        final discoveredElements = fusionManager.discoveredElements;
        return Container(
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
              const SizedBox(height: 8.0),
              Expanded(
                child: ListView.builder(
                  itemCount: discoveredElements.length,
                  itemBuilder: (context, index) {
                    final element = discoveredElements[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                      child: Text(
                        '${element.emoji} ${element.name}',
                        style: AppTextStyles.logEntry,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}