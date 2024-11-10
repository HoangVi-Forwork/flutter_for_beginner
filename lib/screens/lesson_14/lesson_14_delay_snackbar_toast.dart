import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Lesson14DelaySnackbarToast extends StatelessWidget {
  const Lesson14DelaySnackbarToast({super.key});

  void showSnackbar() {
    Get.snackbar(
      'Hello Snackbar',
      'This is a simple snackbar example!',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.blueAccent,
      colorText: Colors.white,
    );
  }

  void showToast() {
    Get.showSnackbar(
      const GetBar(
        message: 'This is a toast message!',
        duration: Duration(seconds: 2),
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.green,
        isDismissible: true,
      ),
    );
  }

  Future<void> showDelayedMessage() async {
    // Hiển thị snackbar sau 3 giây delay
    await Future.delayed(const Duration(seconds: 3));
    showSnackbar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson 14: Delay, Snackbar & Toast'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: showSnackbar,
              child: const Text('Show Snackbar'),
            ),
            ElevatedButton(
              onPressed: showToast,
              child: const Text('Show Toast'),
            ),
            ElevatedButton(
              onPressed: showDelayedMessage,
              child: const Text('Show Delayed Snackbar (3s)'),
            ),
          ],
        ),
      ),
    );
  }
}

// Ghi chú:
// - `Get.snackbar`: Hiển thị snackbar thông qua GetX với các tùy chọn về vị trí, màu nền, và màu chữ.
// - `Get.showSnackbar`: Hiển thị thông báo kiểu toast với tùy chọn về thời gian hiển thị và vị trí.
// - `Future.delayed`: Tạo độ trễ trước khi thực hiện một hành động.
