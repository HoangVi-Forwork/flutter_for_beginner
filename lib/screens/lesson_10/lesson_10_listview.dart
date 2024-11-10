import 'package:flutter/material.dart';

class Lesson10ListView extends StatelessWidget {
  const Lesson10ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson 10: ListView'),
      ),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.star),
            title: Text('List Item $index'),
            subtitle: Text('This is item number $index'),
          );
        },
      ),
    );
  }
}

// Ghi chú: Widget ListView dùng để hiển thị một danh sách cuộn dọc.
