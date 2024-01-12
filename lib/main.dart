import 'package:flutter/material.dart';
import 'package:orm_note_app/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.from(colorScheme: const ColorScheme.dark()),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
