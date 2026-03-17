import 'package:flutter/material.dart';
import 'welcome_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  const Spacer(flex: 2),
  const Text('Count.IO', style: TextStyle(fontSize: 60, fontWeight: FontWeight.w900, fontStyle: FontStyle.italic)),
  const Text('Welcome to count.IO\nGet ready to do counter operations', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
  const Spacer(),
  _blackBtn("START", () => Navigator.push(context, MaterialPageRoute(builder: (context) => const NameSetupScreen()))),
  const SizedBox(height: 20),
  _blackBtn("HISTORY", () {}),
  const Spacer(flex: 2),
  Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
  _greyBtn("LOG IN"),
  _greyBtn("SIGN UP"),
  ],
  ),
  const SizedBox(height: 40),
  ],
  ),
  );
  }

  Widget _blackBtn(String label, VoidCallback onTap) => ElevatedButton(
  onPressed: onTap,
  style: ElevatedButton.styleFrom(backgroundColor: Colors.black, padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
  child: Text(label, style: const TextStyle(color: Colors.white, fontSize: 24, fontStyle: FontStyle.italic, fontWeight: FontWeight.w900)),
  );

  Widget _greyBtn(String label) => Container(
  width: 140, height: 50,
  decoration: BoxDecoration(color: const Color(0xFFC4C4C4), borderRadius: BorderRadius.circular(10)),
  child: Center(child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),
  );
  }
