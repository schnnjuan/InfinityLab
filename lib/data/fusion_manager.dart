import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/foundation.dart'; // Import ChangeNotifier
import 'package:infinitylab/data/element_model.dart';
import 'package:infinitylab/data/fusion_data.dart';

class FusionManager extends ChangeNotifier {
  static final FusionManager _instance = FusionManager._internal();
  factory FusionManager() => _instance;
  FusionManager._internal();

  static List<FusionRule> _fusionRules = [];
  static final Map<String, ElementModel> _allElements = {};
  static final Set<String> _discoveredElementIds = {}; // Start with no elements discovered, they will be added from the JSON

  Future<void> loadFusions() async {
    final String response = await rootBundle.loadString('assets/fusion_table.json');
    final List<dynamic> data = json.decode(response);
    print('Fusion table loaded. Size: ${response.length} bytes');
    _fusionRules = data.map((rule) => FusionRule.fromJson(rule)).toList();

    // Initialize _allElements with basic elements from the rules
    // This assumes that all elements (inputs and outputs) are defined within the fusion rules
    for (var rule in _fusionRules) {
      for (var inputId in rule.inputs) {
        if (!_allElements.containsKey(inputId)) {
          // Placeholder for now, will need proper element data later
          _allElements[inputId] = ElementModel(id: inputId, name: inputId, emoji: '❓', description: 'Desconhecido', category: 'Básico');
        }
      }
      if (!_allElements.containsKey(rule.output)) {
        _allElements[rule.output] = ElementModel(id: rule.output, name: rule.output, emoji: '✨', description: 'Descoberto', category: 'Básico');
      }
    }
    // Add initial elements to discovered. For now, let's assume the first two inputs of the first rule are starting elements.
    // This needs to be properly defined later, perhaps in a separate 'initial_elements.json'
    if (_fusionRules.isNotEmpty) {
      for (var inputId in _fusionRules.first.inputs) {
        _discoveredElementIds.add(inputId);
      }
    }
  }

  static ElementModel? getFusionResult(List<ElementModel> inputs) {
    if (inputs.length != 2) return null;

    final inputIds = inputs.map((e) => e.id).toList()..sort();

    for (var rule in _fusionRules) {
      final ruleInputs = rule.inputs..sort();
      if (listEquals(inputIds, ruleInputs)) {
        // Ensure the output element exists in _allElements before returning
        if (_allElements.containsKey(rule.output)) {
          return _allElements[rule.output];
        }
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

  void addDiscoveredElement(ElementModel element) {
    if (!_discoveredElementIds.contains(element.id)) {
      _allElements[element.id] = element;
      _discoveredElementIds.add(element.id);
      notifyListeners();
    }
  }

  List<ElementModel> get discoveredElements =>
      _discoveredElementIds.map((id) => _allElements[id]!).toList();

  List<ElementModel> get availableElements => _allElements.values.toList();
}
