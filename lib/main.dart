import 'package:flutter/material.dart';
import '../screens/P2Screen.dart';       //p2

void main() {
  runApp(const LearningPartnerApp());
}

class LearningPartnerApp extends StatelessWidget {
  const LearningPartnerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning Partner',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const P2Screen(),
    );
  }
}