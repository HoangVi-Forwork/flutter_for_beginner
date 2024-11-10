import 'package:flutter/material.dart';

class Lesson09GridView extends StatelessWidget {
  const Lesson09GridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson 09: GridView'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Số cột trong lưới
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 10, // Số lượng phần tử
        itemBuilder: (context, index) {
          return Container(
            color: Colors.teal[100 * ((index % 8) + 1)],
            child: Center(
              child: Text(
                'Item $index',
                style: const TextStyle(fontSize: 18),
              ),
            ),
          );
        },
      ),
    );
  }
}

// Ghi chú: Widget GridView giúp hiển thị các phần tử trong dạng lưới, thích hợp cho các danh sách có nhiều hàng và cột.
