import 'package:go_router/go_router.dart';
import 'package:orm_note_app/Screen/main_screen.dart';

final router = GoRouter(
  initialLocation: '/', // 원래 / 이거 주소로 못쓰는데 쓸려고
  routes: [
// 첫번째 시작 라우트 설정
    GoRoute(
      path: '/', // initialLocation이거 해서 사용가능
      builder: (context, state) => const MainScreen(),
    ),
  ],
);
