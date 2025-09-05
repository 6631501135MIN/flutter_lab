import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {  // Fixed: Changed from _MyWidgetState extends State<MyWidget>
  //state variables
  String message = 'Hello friends';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Counter App', style: TextStyle(color: Colors.white)),
          backgroundColor: Color.fromARGB(255, 1, 1, 20),
        ),
        body: Center(
          child: Text(
            message,
            style: TextStyle(fontSize: 22, color: Color.fromARGB(255, 1, 1, 20)),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // debugPrint('test');
            setState((){
              message = (message == 'Hello friends') ? 'Hello me' : 'Hello friends';
            });
          },
          backgroundColor: Color.fromARGB(255, 1, 1, 20),
          child: Icon(Icons.add, color: Colors.white),
        ),
      );
  }
}