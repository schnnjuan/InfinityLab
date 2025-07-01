import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:infinitylab/game/infinity_lab_game.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GameWidget(game: InfinityLabGame()),
      ),
    );
  }
}