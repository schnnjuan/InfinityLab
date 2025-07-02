import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:infinitylab/data/element_model.dart';

class ElementComponent extends PositionComponent {
  final ElementModel element;
  final TextComponent _emojiText;

  ElementComponent({
    required this.element,
    super.position,
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
          size: size ?? Vector2.all(50), // Default size
          anchor: anchor ?? Anchor.center,
        ) {
    add(_emojiText);
  }
}