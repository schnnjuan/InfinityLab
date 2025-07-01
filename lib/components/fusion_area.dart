import 'package:flame/components.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';
import 'package:infinitylab/components/element_component.dart';
import 'package:infinitylab/data/fusion_manager.dart';

class FusionArea extends RectangleComponent with DropCallbacks, HasGameRef {
  final List<ElementComponent> _elementsInArea = [];

  FusionArea({
    Vector2? position,
    Vector2? size,
    Paint? paint,
  }) : super(
          position: position,
          size: size,
          paint: paint ?? (Paint()..color = Colors.blue.withOpacity(0.3)),
        );

  @override
  void onDragUpdate(DragUpdateEvent event) {
    // This is needed for DropCallbacks to work, even if empty
  }

  @override
  void onDragEnter(DragComponent component) {
    if (component is ElementComponent) {
      // Optional: visual feedback when an element enters the area
      paint.color = Colors.blue.withOpacity(0.6);
    }
  }

  @override
  void onDragExit(DragComponent component) {
    if (component is ElementComponent) {
      // Optional: visual feedback when an element exits the area
      paint.color = Colors.blue.withOpacity(0.3);
    }
  }

  @override
  void onDrop(DragComponent component) async {
    if (component is ElementComponent) {
      _elementsInArea.add(component);
      component.position = position + (size / 2) - (component.size / 2); // Center the dropped element

      if (_elementsInArea.length == 2) {
        final element1 = _elementsInArea[0];
        final element2 = _elementsInArea[1];

        // Temporarily keep elements visible for 0.5s
        await Future.delayed(const Duration(milliseconds: 500));

        final resultElementModel = FusionManager.getFusionResult([
          element1.element,
          element2.element,
        ]);

        // Remove old elements
        element1.removeFromParent();
        element2.removeFromParent();
        _elementsInArea.clear();

        if (resultElementModel != null) {
          final newElement = ElementComponent(
            element: resultElementModel,
            position: position + (size / 2) - (Vector2.all(50) / 2), // Center new element
          );
          gameRef.add(newElement);
          FusionManager.addDiscoveredElement(resultElementModel);
          // TODO: Update inventory and discovery log
        } else {
          // TODO: Handle no fusion result (e.g., call AI, return elements to inventory)
        }
      }
    }
    paint.color = Colors.blue.withOpacity(0.3);
  }
}