import 'package:flutter/material.dart';

class InputDemo extends StatefulWidget {
  const InputDemo({super.key});

  @override
  State<InputDemo> createState() => _InputDemoState();  // Fixed: Added < and _
}

class _InputDemoState extends State<InputDemo> {  // Fixed: Removed extra space
  String message = '' ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input Demo')),
      body: Column(
        children: [
          TextField(
            onChanged: (String txt){
              // debugPrint(txt);
              setState((){
                message = txt;
              });
            },
          ),
          Text(message),
        ],
      ),
    );
  }
}