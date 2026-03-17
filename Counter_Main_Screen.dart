import 'package:flutter/material.dart';
import 'counter_screen.dart';

class CounterMainScreen extends StatefulWidget {
  const CounterMainScreen({super.key});

  @override
  State<CounterMainScreen> createState() => _CounterMainScreenState();
}

class _CounterMainScreenState extends State<CounterMainScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _greyLabel("Counter Value"),
            const SizedBox(height: 20),
            _displayBox("$_counter"),
            const SizedBox(height: 60),
            Wrap(
              spacing: 40, runSpacing: 40, alignment: WrapAlignment.center,
              children: [
                _controlUnit("-", "decrease", () => setState(() => _counter--)),
                _controlUnit("+", "increase", () => setState(() => _counter++)),
                _controlUnit("-", "decrease\n- 10", () => setState(() => _counter -= 10)),
                _controlUnit("+", "increase\n+ 10", () => setState(() => _counter += 10)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _displayBox(String text) => Container(
    width: 280, padding: const EdgeInsets.all(18),
    decoration: BoxDecoration(color: const Color(0xFFE0E0E0), borderRadius: BorderRadius.circular(15)),
    child: Text(text, textAlign: TextAlign.center, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18)),
  );

  Widget _controlUnit(String icon, String label, VoidCallback onTap) => Column(
    children: [
      GestureDetector(
        onTap: onTap,
        child: Container(
          width: 70, height: 55,
          decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(12)),
          child: Center(child: Text(icon, style: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold))),
        ),
      ),
      const SizedBox(height: 5),
      Text(label, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold)),
    ],
  );

  Widget _greyLabel(String text) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
    decoration: BoxDecoration(color: const Color(0xFFC4C4C4), borderRadius: BorderRadius.circular(15)),
    child: Text(text, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
  );
}
