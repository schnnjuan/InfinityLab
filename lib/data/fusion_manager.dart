import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:infinitylab/data/element_model.dart';
import 'package:infinitylab/data/fusion_data.dart';

class FusionManager {
  static List<FusionRule> _fusionRules = [];
  static Map<String, ElementModel> _allElements = {};

  static Future<void> loadFusions() async {
    final String response = await rootBundle.loadString('assets/fusion_table.json');
    final data = json.decode(response);
    _fusionRules = (data['fusions'] as List)
        .map((rule) => FusionRule.fromJson(rule))
        .toList();
    // For now, we'll manually add the basic elements to _allElements
    // In a real game, this would come from a more comprehensive element data source
    _allElements['fire'] = const ElementModel(id: 'fire', name: 'Fogo', emoji: '🔥', description: 'Elemento básico', category: 'Básico');
    _allElements['water'] = const ElementModel(id: 'water', name: 'Água', emoji: '💧', description: 'Elemento básico', category: 'Básico');
    _allElements['earth'] = const ElementModel(id: 'earth', name: 'Terra', emoji: '🌍', description: 'Elemento básico', category: 'Básico');
    _allElements['air'] = const ElementModel(id: 'air', name: 'Ar', emoji: '💨', description: 'Elemento básico', category: 'Básico');
  }

  static ElementModel? getFusionResult(List<ElementModel> inputs) {
    if (inputs.length != 2) return null; // Only support 2-element fusions for now

    final inputIds = inputs.map((e) => e.id).toList()..sort();

    for (var rule in _fusionRules) {
      final ruleInputs = rule.inputs..sort();
      if (listEquals(inputIds, ruleInputs)) {
        return _allElements[rule.output]; // Return the ElementModel for the output
      }
    }
    return null;
  }

  // Helper to compare lists (not available by default in Dart for direct comparison)
  static bool listEquals<T>(List<T>? a, List<T>? b) {
    if (a == b) return true;
    if (a == null || b == null || a.length != b.length) return false;
    for (int i = 0; i < a.length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }

  static void addDiscoveredElement(ElementModel element) {
    _allElements[element.id] = element;
  }
}
