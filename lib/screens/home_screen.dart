import 'package:flutter/material.dart';
// import 'package:flutter_for_beginner/screens/lesson_09/lesson_09_gridview.dart';
// import 'package:flutter_for_beginner/screens/lesson_10/lesson_10_listview.dart';
import 'package:get/get.dart';
import 'lesson_01/lesson_01_container.dart';
import 'lesson_02/lesson_02_text.dart';
import 'lesson_03/lesson_03_row_column.dart';
import 'lesson_04/lesson_04_expanded.dart';
import 'lesson_05/lesson_05_padding.dart';
import 'lesson_06/lesson_06_align.dart';
import 'lesson_07/lesson_07_icon.dart';
import 'lesson_08/lesson_08_image.dart';
// import 'lesson_11/lesson_11_scroll.dart';
// import 'lesson_13/lesson_13_list_display.dart';
// import 'lesson_13/lesson_13_textformfield_display.dart';
// import 'lesson_14/lesson_14_delay_snackbar_toast.dart';

// TODO: CLASS HOMESCREEN CƠ BẢN

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Lessons Home'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => Get.to(() => Lesson01Container()),
                child: Text('Lesson 01: Container'),
              ),
              ElevatedButton(
                onPressed: () => Get.to(() => Lesson02Text()),
                child: Text('Lesson 02: Text'),
              ),
              ElevatedButton(
                onPressed: () => Get.to(() => Lesson03RowColumn()),
                child: Text('Lesson 03: Row & Column'),
              ),
              ElevatedButton(
                onPressed: () => Get.to(() => Lesson04Expanded()),
                child: Text('Lesson 04: Expanded'),
              ),
              ElevatedButton(
                onPressed: () => Get.to(() => Lesson05Padding()),
                child: Text('Lesson 05: Padding'),
              ),
              ElevatedButton(
                onPressed: () => Get.to(() => Lesson06Align()),
                child: Text('Lesson 06: Align'),
              ),
              ElevatedButton(
                onPressed: () => Get.to(() => Lesson07Icon()),
                child: Text('Lesson 07: Icon'),
              ),
              ElevatedButton(
                onPressed: () => Get.to(() => Lesson08Image()),
                child: Text('Lesson 08: Image'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Các bạn sẽ thấy những đường gạch chân màu xanh bên dưới mỗi các wiget
// đây là đấu hiệu cho thấy một widget tĩnh, không có sự thay đổi khi build lại app
// nên cần thêm từ khoá const ở phía trước, ví dụ:
//                                            const Text('Lesson 01: Container'),

// TODO: CLASS HOMESCREEN SCROLL ONLY SCREEN TO CALL INDIVIDUAL WIDGET

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter Lessons Home'),
//       ),
//       body: Container(
//         margin: const EdgeInsets.only(top: 30, bottom: 50),
//         child: Center(
//           child: SingleChildScrollView(
//             physics: const AlwaysScrollableScrollPhysics(),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 _buildButton('Lesson 01: Container', Lesson01Container()),
//                 _buildButton('Lesson 02: Text', Lesson02Text()),
//                 _buildButton('Lesson 03: Row & Column', Lesson03RowColumn()),
//                 _buildButton('Lesson 04: Expanded', Lesson04Expanded()),
//                 _buildButton('Lesson 05: Padding', Lesson05Padding()),
//                 _buildButton('Lesson 06: Align', Lesson06Align()),
//                 _buildButton('Lesson 07: Icon', Lesson07Icon()),
//                 _buildButton('Lesson 08: Image', Lesson08Image()),
//                 _buildButton('Lesson 09: GridView', Lesson09GridView()),
//                 _buildButton('Lesson 10: ListView', Lesson10ListView()),
//                 _buildButton('Lesson 11: Scroll View', Lesson11Scroll()),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   // Hàm tạo nút bấm với kích thước đồng nhất
//   Widget _buildButton(String title, Widget page) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: SizedBox(
//         width: 300, // Chiều rộng cố định của nút
//         height: 50, // Chiều cao cố định của nút
//         child: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             minimumSize: const Size(300, 50), // Kích thước tối thiểu
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10), // Bo góc nhẹ
//             ),
//           ),
//           onPressed: () => Get.to(() => page),
//           child: Text(title),
//         ),
//       ),
//     );
//   }
// }

// TODO: CLASS HOMESCREEN NÂNG CAO HƠN

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final List<Widget> lessons = [
//       Lesson01Container(),
//       const Lesson02Text(),
//       const Lesson03RowColumn(),
//       const Lesson04Expanded(),
//       const Lesson05Padding(),
//       const Lesson06Align(),
//       const Lesson07Icon(),
//       const Lesson08Image(),
//       const Lesson09GridView(),
//       const Lesson10ListView(),
//       const Lesson11Scroll(),
//       const Lesson13ListDisplay(),
//       Lesson13TextFormFieldDisplay(),
//       const Lesson14DelaySnackbarToast(),
//     ];

//     final List<String> lessonTitles = [
//       'Lesson 01: Container',
//       'Lesson 02: Text',
//       'Lesson 03: Row & Column',
//       'Lesson 04: Expanded',
//       'Lesson 05: Padding',
//       'Lesson 06: Align',
//       'Lesson 07: Icon',
//       'Lesson 08: Image',
//       'Lesson 09: GridView',
//       'Lesson 10: ListView',
//       'Lesson 11: Scroll View',
//       'Lesson 13: List Display',
//       'Lesson 13: TextFormField & Display',
//       'Lesson 14: Delay, Snackbar & Toast',
//     ];

//     final List<Color> buttonColors = [
//       Colors.red[700]!, // Màu đỏ đậm
//       Colors.blue[800]!, // Màu xanh dương đậm
//       Colors.green[800]!, // Màu xanh lá cây đậm
//       Colors.orange[900]!, // Màu cam đậm
//       Colors.purple[900]!, // Màu tím đậm
//       Colors.teal[900]!, // Màu xanh teal đậm
//       Colors.yellow[800]!, // Màu vàng đậm
//       Colors.pink[800]!, // Màu hồng đậm
//       Colors.cyan[900]!, // Màu cyan đậm
//       Colors.indigo[900]!, // Màu chàm đậm
//       Colors.amber[900]!, // Màu hổ phách đậm
//       Colors.lightBlue[900]!, // Màu xanh nhạt đậm
//       Colors.deepOrange[900]!, // Màu cam đậm
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter Lessons Home'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: GridView.builder(
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
//             childAspectRatio: 1,
//           ),
//           itemCount: lessons.length,
//           itemBuilder: (context, index) {
//             return Container(
//               decoration: BoxDecoration(
//                 color: buttonColors[index % buttonColors.length],
//                 borderRadius: BorderRadius.circular(10),
//                 border: Border.all(color: Colors.black26, width: 1),
//               ),
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: buttonColors[index % buttonColors.length],
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   padding: const EdgeInsets.all(0),
//                 ),
//                 onPressed: () => Get.to(() => lessons[index]),
//                 child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         lessonTitles[index].split(': ')[0].toUpperCase(),
//                         style: const TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16,
//                             color: Colors.white),
//                       ),
//                       const SizedBox(height: 5),
//                       Text(
//                         lessonTitles[index].split(': ')[1],
//                         textAlign: TextAlign.center,
//                         style: const TextStyle(color: Colors.white),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
