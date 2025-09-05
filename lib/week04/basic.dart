import 'package:flutter/material.dart';

class Basic extends StatelessWidget {
  const Basic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mobile App', style: TextStyle(color: Colors.white)),
          backgroundColor: Color.fromARGB(255, 1, 1, 20),
        ),
        body: Center(
          child: Text(
            'Test App',
            style: TextStyle(fontSize: 22, color: Color.fromARGB(255, 1, 1, 20)),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          backgroundColor: Color.fromARGB(255, 1, 1, 20),
          child: Icon(Icons.add, color: Colors.white),
        ),
      );
  }
}
