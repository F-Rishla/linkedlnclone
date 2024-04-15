import 'package:flutter/material.dart';
import 'package:linkdedln_demo/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 225, 220, 220)),
    );
  }
}
