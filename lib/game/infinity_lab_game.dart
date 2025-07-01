import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame/particles.dart';
import 'package:flutter/material.dart';
import 'package:infinitylab/audio/audio_manager.dart';
import 'package:infinitylab/components/element_component.dart';

class InfinityLabGame extends FlameGame with TapCallbacks, HasCollisionDetection, Draggable {
  final AudioManager audioManager = AudioManager();
  bool isFusing = false;
  final Random _random = Random();

  @override
  Future<void> onLoad() async {
    await super.onLoad();
  }

  void addElementAtPosition(ElementComponent element, Vector2 position) {
    element.position = position;
    add(element);
  }

  void _runSuccessAnimation(Vector2 position) {
    const glitchCharacters = ['ƛ', 'Ʃ', 'ʭ', 'ʬ', 'ʮ', 'ʯ', 'ʁ', 'ʃ', 'ʤ', 'ʦ', 'ʧ', 'ʨ', 'ʰ', 'ʱ', 'ʲ', 'ʳ', 'ʴ', 'ʵ', 'ʶ'];
    const glitchColors = [Color(0xff00ffff), Color(0xff00ff00), Color(0xffff00ff)];

    final particleComponent = ParticleSystemComponent(
      position: position,
      particle: Particle.generate(
        count: 25,
        lifespan: 1.0,
        generator: (i) {
          final char = glitchCharacters[_random.nextInt(glitchCharacters.length)];
          final speed = _random.nextDouble() * 200 + 50;
          final angle = _random.nextDouble() * 2 * pi;
          final velocity = Vector2(cos(angle), sin(angle)) * speed;
          final rotationSpeed = (_random.nextDouble() - 0.5) * 2 * pi;

          return MovingParticle(
            to: velocity,
            child: ComputedParticle(
              renderer: (canvas, particle) {
                double opacity = 0;
                if (particle.progress < 0.2) {
                  opacity = particle.progress / 0.2;
                } else {
                  opacity = 1.0 - (particle.progress - 0.2) / 0.8;
                }

                final currentAngle = particle.progress * rotationSpeed;

                Color color = glitchColors[0];
                if (_random.nextDouble() < 0.1) {
                  color = glitchColors[_random.nextInt(glitchColors.length)];
                }

                final textStyle = TextStyle(
                  color: color.withOpacity(opacity),
                  fontFamily: 'VT323',
                  fontSize: 16,
                );

                final textPainter = TextPainter(
                  text: TextSpan(text: char, style: textStyle),
                  textDirection: TextDirection.ltr,
                )..layout();

                canvas.save();
                canvas.translate(-textPainter.width / 2, -textPainter.height / 2);
                canvas.rotate(currentAngle);
                textPainter.paint(canvas, Offset.zero);
                canvas.restore();
              },
            ),
          );
        },
      ),
    );

    add(particleComponent);

    add(TimerComponent(
      period: 1.2,
      onTick: () => particleComponent.removeFromParent(),
      removeOnFinish: true,
    ));
  }

  void _runFailureAnimation(Vector2 position) {
    final particleComponent = ParticleSystemComponent(
      position: position,
      particle: Particle.generate(
        count: 15,
        lifespan: 0.6,
        generator: (i) {
          final speed = _random.nextDouble() * 80 + 20;
          final angle = _random.nextDouble() * 2 * pi;
          final velocity = Vector2(cos(angle), sin(angle)) * speed;

          return MovingParticle(
            to: velocity,
            child: ComputedParticle(
              renderer: (canvas, particle) {
                final paint = Paint()
                  ..color = Colors.grey.withOpacity(1.0 - particle.progress)
                  ..blendMode = BlendMode.srcOver;
                canvas.drawCircle(Offset.zero, _random.nextDouble() * 3 + 1, paint);
              },
            ),
          );
        },
      ),
    );

    add(particleComponent);

    add(TimerComponent(
      period: 0.8,
      onTick: () => particleComponent.removeFromParent(),
      removeOnFinish: true,
    ));
  }

  @override
  void onTapDown(TapDownEvent event) {
    super.onTapDown(event);
    // Removed test fusion calls
  }
}

