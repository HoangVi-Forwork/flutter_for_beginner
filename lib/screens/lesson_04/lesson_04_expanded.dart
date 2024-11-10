import 'package:flutter/material.dart';

class Lesson04Expanded extends StatelessWidget {
  const Lesson04Expanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson 04: Expanded'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(width: 50, height: 50, color: Colors.red),
              Expanded(
                child: Container(height: 50, color: Colors.green),
              ),
              Container(width: 50, height: 50, color: Colors.blue),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              color: Colors.orange,
              child: Center(child: Text('Expanded takes available space')),
            ),
          ),
        ],
      ),
    );
  }
}

// Ghi chú: Widget Expanded giúp chiếm không gian còn lại trong một hàng hoặc cột.
