import 'package:flutter/material.dart';
import 'value_setup_screen.dart';

class NameSetupScreen extends StatelessWidget {
  const NameSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _greyLabel("Enter counter name"),
            const SizedBox(height: 20),
            _inputBox("Enter name here"),
            const SizedBox(height: 80),
            _blackBtn("NEXT", () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ValueSetupScreen()))),
          ],
        ),
      ),
    );
  }

  Widget _greyLabel(String text) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
    decoration: BoxDecoration(color: const Color(0xFFC4C4C4), borderRadius: BorderRadius.circular(15)),
    child: Text(text, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
  );

  Widget _inputBox(String text) => Container(
    width: 280, padding: const EdgeInsets.all(18),
    decoration: BoxDecoration(color: const Color(0xFFC4C4C4), borderRadius: BorderRadius.circular(15)),
    child: Text(text, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
  );

  Widget _blackBtn(String label, VoidCallback onTap) => ElevatedButton(
    onPressed: onTap,
    style: ElevatedButton.styleFrom(backgroundColor: Colors.black, padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
    child: Text(label, style: const TextStyle(color: Colors.white, fontSize: 24, fontStyle: FontStyle.italic, fontWeight: FontWeight.w900)),
  );
}
