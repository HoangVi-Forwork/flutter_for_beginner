import 'package:flutter/material.dart';

class Lesson06Align extends StatelessWidget {
  const Lesson06Align({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson 06: Align'),
      ),
      body: Container(
        color: Colors.yellow,
        height: 200,
        child: Align(
          alignment: Alignment.bottomRight,
          child: Container(
            width: 50,
            height: 50,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

// Ghi chú: Widget Align giúp định vị các widget con trong một không gian nhất định.
