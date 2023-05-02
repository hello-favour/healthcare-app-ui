import 'package:flutter/material.dart';
import 'package:medical_health_careapp_ui/screens/welcom_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WelcomeHome(),
    );
  }
}
