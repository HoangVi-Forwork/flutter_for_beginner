import 'package:flutter/material.dart';

class Lesson01Container extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson 01: Container'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container đơn giản
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Center(child: Text('Simple')),
            ),
            const SizedBox(height: 20),
            // Container nâng cao với border và margin
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              margin: const EdgeInsets.all(10),
              child: const Center(child: Text('Advanced')),
            ),
          ],
        ),
      ),
    );
  }
}

// Ghi chú: Widget Container được sử dụng để bao bọc và trang trí các thành phần con.
