import 'package:flame/components.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';
import 'package:infinitylab/data/element_model.dart';

class ElementComponent extends PositionComponent with DragCallbacks {
  final ElementModel element;
  final TextComponent _emojiText;

  ElementComponent({
    required this.element,
    Vector2? position,
    Vector2? size,
    Anchor? anchor,
  })  : _emojiText = TextComponent(
          text: element.emoji,
          textRenderer: TextPaint(
            style: TextStyle(
              fontSize: size?.x ?? 50, // Adjust font size based on component size
              color: Colors.black,
            ),
          ),
          anchor: Anchor.center,
        ),
        super(
          position: position,
          size: size ?? Vector2.all(50), // Default size
          anchor: anchor ?? Anchor.center,
        ) {
    add(_emojiText);
  }

  @override
  void onDragUpdate(DragUpdateEvent event) {
    position.add(event.localDelta);
  }

  @override
  void onDragEnd(DragEndEvent event) {
    // TODO: Handle what happens when drag ends (e.g., snap to grid, drop in fusion area)
    super.onDragEnd(event);
  }
}
