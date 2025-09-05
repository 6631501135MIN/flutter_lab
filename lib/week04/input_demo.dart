import 'package:flutter/material.dart';

class InputDemo extends StatefulWidget {
  const InputDemo({super.key});

  @override
  State<InputDemo> createState() => _InputDemoState(); // Fixed: Added < and _
}

class _InputDemoState extends State<InputDemo> {
  // Fixed: Removed extra space
  //State variables
  String message = '';
  TextEditingController tcName = TextEditingController();

  //functions
  void updateText() {
    setState(() {
      message = tcName.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input Demo')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your name',
                suffixIcon: IconButton(
                  onPressed: tcName.clear,
                  icon: Icon(Icons.clear),
                ),
              ),
              controller: tcName,
            ),
          ),
          ElevatedButton(onPressed: () => updateText(), child: Text('OK')),
          SizedBox(height: 16),
          Text(message),
        ],
      ),
    );
  }
}
