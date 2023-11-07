import 'package:flutter/material.dart';
import 'package:mood_fix/Features/Home%20Screen/home.dart';
import 'package:mood_fix/Features/Player%20Screen/player.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PlayerScreen(),
    );
  }
}
