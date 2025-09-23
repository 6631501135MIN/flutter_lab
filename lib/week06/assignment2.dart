// lib/assignment2.dart
import 'dart:async';
import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  double count = 1.00;
  int clicks = 0;
  Timer? _timer;

  void startGame() {
    _timer?.cancel(); // restart clean
    setState(() {
      count = 1.00;
      clicks = 0;
    });

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        count -= 0.01;
        if (count <= 0.00) {
          count = 0.00;
          _timer?.cancel();
        }
      });
    });
  }

  void setClick() {
    if (count > 0.00) {
      setState(() {
        clicks++;
      });
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                count.toStringAsFixed(2),
                style: const TextStyle(fontSize: 20, color: Colors.red),
              ),
            ),
            const SizedBox(height: 12),
            Text("Click = $clicks", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton.icon(
                  onPressed: setClick,
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.lightGreen,
                  ),
                  label: const Text('Click', style: TextStyle(color: Colors.white)),
                  icon: const Icon(Icons.touch_app, color: Colors.white),
                ),
                const SizedBox(width: 12),
                TextButton.icon(
                  onPressed: startGame,
                  style: TextButton.styleFrom(
                    side: const BorderSide(color: Colors.grey, width: 1),
                  ),
                  icon: const Icon(Icons.replay, color: Colors.black),
                  label: const Text(
                    'PLAY',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
