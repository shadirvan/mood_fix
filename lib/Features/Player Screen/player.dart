import 'package:flutter/material.dart';
import 'package:mood_fix/Constants/colors.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: appBlue,body: SafeArea(child: Center(child: Text("Fuck You"),)),);
  }
}