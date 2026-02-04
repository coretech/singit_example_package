import 'package:flutter/material.dart';
import 'package:singit_idt_example_app/app_home_screen.dart';

void main() {
  runApp(const ExampleIdtApp());
}

class ExampleIdtApp extends StatelessWidget {
  const ExampleIdtApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppHomeScreen()
    );
  }
}
