// lib/assignment2.dart
import 'package:flutter/material.dart';
import 'dart:math';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  final TextEditingController tcNumber1 = TextEditingController();
  final TextEditingController tcNumber2 = TextEditingController();

  String result = '';
  String errorMessage = '';

  void calculateSum() {
    setState(() {
      errorMessage = '';
      result = '';

      if (tcNumber1.text.isEmpty || tcNumber2.text.isEmpty) {
        errorMessage = 'Please input both numbers';
        return;
      }

      double? num1 = double.tryParse(tcNumber1.text);
      double? num2 = double.tryParse(tcNumber2.text);

      if (num1 == null || num2 == null) {
        errorMessage = 'Please input only numbers';
        return;
      }

      double sum = num1 + num2;
      result = 'Result = ${sum.toInt()}';
    });
  }

  void calculatePower() {
    setState(() {
      errorMessage = '';
      result = '';

      if (tcNumber1.text.isEmpty || tcNumber2.text.isEmpty) {
        errorMessage = 'Please input both numbers';
        return;
      }

      double? num1 = double.tryParse(tcNumber1.text);
      double? num2 = double.tryParse(tcNumber2.text);

      if (num1 == null || num2 == null) {
        errorMessage = 'Please input only numbers';
        return;
      }

      double power = pow(num1, num2).toDouble();
      result = 'Result = ${power.toInt()}';
    });
  }

  void clearAll() {
    setState(() {
      tcNumber1.clear();
      tcNumber2.clear();
      result = '';
      errorMessage = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // Use AppBar for the title instead of Container
      appBar: AppBar(
        title: Text(
          'Calculator',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, // Make text bold
          ),
        ),
        backgroundColor: Colors.blue,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 20),

              // Number 1 input
              TextField(
                controller: tcNumber1,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Number 1',
                  border: UnderlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 8),
                ),
              ),

              const SizedBox(height: 16),

              // Number 2 input
              TextField(
                controller: tcNumber2,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Number 2',
                  border: UnderlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 8),
                ),
              ),

              const SizedBox(height: 30),

              // Sum button
              ElevatedButton(
                onPressed: calculateSum,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text('Sum'),
              ),

              const SizedBox(height: 10),

              // Power button
              ElevatedButton(
                onPressed: calculatePower,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text('Power'),
              ),

              const SizedBox(height: 10),

              // Clear button
              ElevatedButton(
                onPressed: clearAll,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 36,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text('Clear'),
              ),

              const SizedBox(height: 20),

              if (result.isNotEmpty)
                Text(
                  result,
                  style: const TextStyle(color: Colors.red, fontSize: 16),
                ),

              if (errorMessage.isNotEmpty)
                Text(
                  errorMessage,
                  style: const TextStyle(color: Colors.red, fontSize: 16),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
