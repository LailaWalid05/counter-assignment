import 'package:flutter/material.dart';
import 'welcome_screen.dart';

void main() {
  runApp(const CountIOApp());
}

class CountIOApp extends StatelessWidget {
  const CountIOApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Count.IO',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const WelcomeScreen(),
    );
  }
}
