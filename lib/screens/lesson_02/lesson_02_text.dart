import 'package:flutter/material.dart';

class Lesson02Text extends StatelessWidget {
  const Lesson02Text({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson 02: Text'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Đây là ví dụ đơn giản với Text widget',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Ví dụ khác với màu sắc và kích cỡ khác',
              style: TextStyle(fontSize: 16, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}

// Ghi chú: Widget Text dùng để hiển thị chuỗi văn bản trên màn hình.