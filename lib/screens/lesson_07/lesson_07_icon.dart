import 'package:flutter/material.dart';

class Lesson07Icon extends StatelessWidget {
  const Lesson07Icon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson 07: Icon'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 50,
            ),
            SizedBox(height: 20),
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 100,
            ),
            Text(
              'Different sizes and colors of icons',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

// Ghi chú: Widget Icon được sử dụng để hiển thị các biểu tượng có sẵn trong Material Design.
