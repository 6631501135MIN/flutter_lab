import 'package:flutter/material.dart';
import 'package:flutter_lab/week09/drawer_widget.dart';

class DrawerDemo2 extends StatelessWidget {
  const DrawerDemo2({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(title: Text('Drawer Demo')),
      drawer: DrawerWidget(),
      drawerEnableOpenDragGesture: false,
      body: Align(alignment: Alignment.topCenter, child: Text('Second page')),
    );
  }
}