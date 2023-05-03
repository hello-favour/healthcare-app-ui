import 'package:flutter/material.dart';
import 'package:medical_health_careapp_ui/components/nav_bar_roots.dart';
import 'package:medical_health_careapp_ui/screens/home_screen.dart';
import 'package:medical_health_careapp_ui/screens/sign_in_screen.dart';
import 'package:medical_health_careapp_ui/screens/sign_up_screen.dart';
import 'package:medical_health_careapp_ui/screens/welcome_home.dart';

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
