import 'package:flutter/material.dart';

class MemoScreen extends StatefulWidget {
  const MemoScreen({super.key});

  @override
  State<MemoScreen> createState() => _MemoScreenState();
}

class _MemoScreenState extends State<MemoScreen> {
  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Memo')),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(backgroundColor: Colors.yellow),
                CircleAvatar(backgroundColor: Colors.grey),
                CircleAvatar(backgroundColor: Colors.orange),
                CircleAvatar(backgroundColor: Colors.pink),
                CircleAvatar(backgroundColor: Colors.black),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: controller,
              onChanged: (text) {},
              keyboardType: TextInputType.text,
              validator: (value) {
                // 유효성 검사
                if (value == null || value.isEmpty) {
                  return '제목을 입력해주세요';
                }
                return null;
              },
              decoration: InputDecoration(
                // 기본디자인
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    width: 2,
                    color: Color(0xFF4FB6B2),
                  ),
                ),
                // 눌렀을때 디자인
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    width: 2,
                    color: Colors.amber,
                  ),
                ),
                hintText: '제목',
              ),
            ),
          ), // TextFormField
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: controller,
              onChanged: (text) {},
              keyboardType: TextInputType.text,
              maxLines: 20,
              validator: (value) {
                // 유효성 검사
                if (value == null || value.isEmpty) {
                  return '내용을 입력해주세요';
                }
                return null;
              },
              decoration: InputDecoration(
                // 기본디자인
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    width: 2,
                    color: Color(0xFF4FB6B2),
                  ),
                ),
                // 눌렀을때 디자인
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    width: 2,
                    color: Colors.amber,
                  ),
                ),
                hintText: '내용',
              ),
            ),
          ), // TextFormField
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        foregroundColor: Colors.black, // 아이콘의 색상을 지정합니다.
        backgroundColor: Colors.white, // 버튼의 배경색을 지정합니다.
        elevation: 0.0, // 버튼의 음영 효과의 크기를 조절합니다.
        splashColor: Colors.yellow, // 누르고 있지 않을 때 나타나는 색상을 지정합니다.
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(99), // 버튼의 모양을 지정합니다.
        ),
        child: const Icon(Icons.save),
      ),
    );
  }
}
