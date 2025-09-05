import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {  // Fixed: Changed from _MyWidgetState extends State<MyWidget>
  //state variables
  // 
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Counter App', style: TextStyle(color: Colors.white)),
          backgroundColor: Color.fromARGB(255, 152, 79, 192),
        ),
        body: Center(
          child: Text(
            // message,
            'Counter = $count',
            style: TextStyle(fontSize: 22, color: Color.fromARGB(255, 152, 79, 192)),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // debugPrint('test');
            setState((){
              // message = (message == 'Hello friends') ? 'Hello me' : 'Hello friends';
              count++;
            });
          },
          backgroundColor: Color.fromARGB(255, 152, 79, 192),
          child: Icon(Icons.add, color: Colors.white),
        ),
      );
  }
}