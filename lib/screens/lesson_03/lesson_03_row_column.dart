import 'package:flutter/material.dart';

class Lesson03RowColumn extends StatelessWidget {
  const Lesson03RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson 03: Row & Column'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(width: 50, height: 50, color: Colors.red),
              Container(width: 50, height: 50, color: Colors.green),
              Container(width: 50, height: 50, color: Colors.blue),
            ],
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Container(width: 100, height: 50, color: Colors.orange),
              Container(width: 100, height: 50, color: Colors.purple),
            ],
          ),
        ],
      ),
    );
  }
}

// Ghi chú: Widget Row & Column dùng để sắp xếp các phần tử theo hàng ngang hoặc cột dọc.
