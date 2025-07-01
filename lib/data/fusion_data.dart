import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class FusionManager {
  late Map<String, dynamic> _fusionData;

  Future<void> loadFusions() async {
    final jsonString = await rootBundle.loadString('lib/data/fusion_table.json');
    _fusionData = json.decode(jsonString);
  }

  String? getFusionResult(String element1, String element2) {
    final inputs = [element1, element2]..sort();
    for (var fusion in _fusionData['fusions']) {
      final fusionInputs = List<String>.from(fusion['inputs'])..sort();
      if (fusionInputs.length == 2 &&
          fusionInputs[0] == inputs[0] &&
          fusionInputs[1] == inputs[1]) {
        return fusion['output'];
      }
    }
    return null;
  }
}