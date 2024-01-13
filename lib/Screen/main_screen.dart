import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your note'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.sort),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push(Uri(path: '/memo_screen').toString());
        },
        foregroundColor: Colors.black, // 아이콘의 색상을 지정합니다.
        backgroundColor: Colors.white, // 버튼의 배경색을 지정합니다.
        elevation: 0.0, // 버튼의 음영 효과의 크기를 조절합니다.
        splashColor: Colors.yellow, // 누르고 있지 않을 때 나타나는 색상을 지정합니다.
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(99), // 버튼의 모양을 지정합니다.
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
