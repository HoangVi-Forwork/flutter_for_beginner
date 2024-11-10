import 'package:flutter/material.dart';

class Lesson08Image extends StatelessWidget {
  const Lesson08Image({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson 08: Image'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://images.pexels.com/photos/24827415/pexels-photo-24827415/free-photo-of-man-hand-holding-vintage-map-of-turkey.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load',
              width: 150,
            ),
            const SizedBox(height: 20),
            // Image.asset(
            //   'assets/sample_image.png', // Đảm bảo rằng bạn có ảnh trong thư mục assets. (*)
            //   width: 150,
            //   height: 150,
            // ),
            const Text(
              'Displaying images from network and assets',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

// Ghi chú: Widget Image giúp hiển thị hình ảnh từ nhiều nguồn khác nhau, bao gồm network và assets.
// (*) Đối với ảnh lấy từ thư mục asset thì cần đảm bảo thư mục này đã được tạo, và được khai báo trong thư mục "pubspec.yaml"