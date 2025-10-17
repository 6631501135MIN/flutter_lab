import 'package:flutter/material.dart';
import 'package:flutter_lab/week08/fruit.dart';

class Page2 extends StatelessWidget {
  Fruit fruit;

  Page2({super.key, required this.fruit});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 2')),
      body: Column(
        children: [
          Text('Name: ${fruit.name}'),
          Text('Price: ${fruit.price}'),
          Text('Origin date: ${fruit.date[0]}'),
          Text('Expiration date: ${fruit.date[1]}'),
          Text('Country: ${fruit.country}'),
          FilledButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Back'),
          ),
        ],
      ),
    );
  }
}
