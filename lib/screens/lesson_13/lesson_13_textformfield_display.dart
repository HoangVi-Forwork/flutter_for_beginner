import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/text_display_controller.dart';

class Lesson13TextFormFieldDisplay extends StatelessWidget {
  Lesson13TextFormFieldDisplay({super.key});

  // Khởi tạo controller
  final TextDisplayController textController = Get.put(TextDisplayController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson 13: TextFormField & Display'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Enter some text',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                // Cập nhật dữ liệu vào controller
                textController.updateText(value);
              },
            ),
            const SizedBox(height: 20),
            Obx(() => Text(
                  'You entered: ${textController.text.value}',
                  style: const TextStyle(fontSize: 18),
                )),
          ],
        ),
      ),
    );
  }
}

// Ghi chú: Widget TextFormField để nhập liệu và Obx để hiển thị dữ liệu từ Controller.

// Giải thích về StatelessWidget và StatefulWidget
// 1. StatelessWidget
// Định nghĩa: StatelessWidget là một widget không có trạng thái (state), nghĩa là khi widget được vẽ, nó không thay đổi trong suốt vòng đời của nó.
// Dùng khi nào: Sử dụng khi nội dung của widget không thay đổi hoặc khi không cần quản lý trạng thái (state) nội bộ.
// Ví dụ: Các widget hiển thị văn bản hoặc nút tĩnh.
// Cách hoạt động: Mỗi lần được vẽ, build() của StatelessWidget chỉ đơn giản là tạo giao diện, không quản lý sự thay đổi nào trong dữ liệu.

// 2. StatefulWidget
// Định nghĩa: StatefulWidget là một widget có trạng thái, có thể thay đổi trong suốt vòng đời của widget.
// Dùng khi nào: Sử dụng khi cần quản lý các thay đổi hoặc cập nhật giao diện khi dữ liệu hoặc sự kiện thay đổi, chẳng hạn như khi người dùng tương tác với giao diện.
// Cách hoạt động: StatefulWidget được chia thành hai lớp:
// Lớp chính (StatefulWidget): Không có trạng thái, chỉ khởi tạo một State liên quan.
// Lớp state (State): Chứa logic và trạng thái của widget. Giao diện có thể được thay đổi thông qua việc gọi setState().

// Ghi chú trong Lesson13ListDisplay:
// Trong Lesson13ListDisplay, chúng ta sử dụng StatefulWidget vì cần quản lý các thay đổi trong danh sách items khi người dùng nhấn vào các nút thêm, bớt, và làm sạch:

// Lý do sử dụng StatefulWidget:

// Widget cần thay đổi giao diện khi danh sách items thay đổi.
// setState() được gọi mỗi khi thêm, bớt, hoặc làm sạch danh sách để cập nhật giao diện.
// Phân tích các phần trong mã nguồn:

// setState(): Được gọi trong các hàm _addItem(), _removeItem(), và _clearItems() để báo cho Flutter biết rằng cần xây dựng lại giao diện với dữ liệu cập nhật.
// Expanded: Dùng để làm cho danh sách ListView chiếm không gian còn lại của màn hình.
// Column: Được sử dụng để sắp xếp các nút hành động và danh sách.
// Khi nào nên dùng StatelessWidget và StatefulWidget:
// Dùng StatelessWidget: Khi giao diện không phụ thuộc vào bất kỳ trạng thái nào và chỉ cần hiển thị một cách tĩnh.
// Dùng StatefulWidget: Khi cần quản lý trạng thái thay đổi, như cập nhật giao diện dựa trên các sự kiện từ người dùng hoặc thay đổi dữ liệu.
