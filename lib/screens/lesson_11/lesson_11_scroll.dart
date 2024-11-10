import 'package:flutter/material.dart';

class Lesson11Scroll extends StatelessWidget {
  const Lesson11Scroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson 11: Scroll View'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            20,
            (index) => Container(
              margin: const EdgeInsets.all(10),
              height: 100,
              color: Colors.primaries[index % Colors.primaries.length],
              child: Center(
                child: Text(
                  'Scroll Item $index',
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Ghi chú: Widget SingleChildScrollView cho phép cuộn nội dung trong một widget con.
