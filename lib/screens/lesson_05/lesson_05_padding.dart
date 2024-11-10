import 'package:flutter/material.dart';

class Lesson05Padding extends StatelessWidget {
  const Lesson05Padding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson 05: Padding'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: Center(
              child: Text(
                'Padded',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Ghi chú: Widget Padding giúp tạo khoảng trống xung quanh các widget con.
