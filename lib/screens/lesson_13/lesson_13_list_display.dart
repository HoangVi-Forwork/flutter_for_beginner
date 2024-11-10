import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'lesson_13_textformfield_display.dart'; // Import bài học tiếp theo nếu cần

class Lesson13ListDisplay extends StatefulWidget {
  const Lesson13ListDisplay({super.key});

  @override
  _Lesson13ListDisplayState createState() => _Lesson13ListDisplayState();
}

class _Lesson13ListDisplayState extends State<Lesson13ListDisplay> {
  // Danh sách dữ liệu mẫu
  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  void _addItem() {
    setState(() {
      items.add('Item ${items.length + 1}');
    });
  }

  void _removeItem() {
    if (items.isNotEmpty) {
      setState(() {
        items.removeLast();
      });
    }
  }

  void _clearItems() {
    setState(() {
      items.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson 13: List Display with Actions'),
      ),
      body: Column(
        children: [
          // Các nút hành động
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.add, color: Colors.green),
                onPressed: _addItem,
                tooltip: 'Add Item',
              ),
              IconButton(
                icon: const Icon(Icons.remove, color: Colors.red),
                onPressed: _removeItem,
                tooltip: 'Remove Item',
              ),
              IconButton(
                icon: const Icon(Icons.delete, color: Colors.orange),
                onPressed: _clearItems,
                tooltip: 'Clear All Items',
              ),
            ],
          ),
          // Danh sách hiển thị
          Expanded(
            child: items.isNotEmpty
                ? ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: const Icon(Icons.list),
                        title: Text(items[index]),
                        subtitle: Text('Subtitle for ${items[index]}'),
                      );
                    },
                  )
                : const Center(
                    child: Text(
                      'No items to display',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ),
          ),
          // Nút điều hướng
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    // Chuyển đến bài học trước đó (nếu có)
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Previous',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Chuyển đến bài học tiếp theo
                    Get.to(() => Lesson13TextFormFieldDisplay());
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Ghi chú: Widget này có các nút để thêm, bớt, và xóa tất cả các phần tử trong danh sách,
// đồng thời có các nút điều hướng để chuyển sang bài học trước và tiếp theo.
