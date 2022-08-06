import 'package:draw_app_bloc/views/draw_page.dart';
import 'package:flutter/material.dart';

class DrawApp extends StatelessWidget {
  const DrawApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "DrawApp",
      home: DrawPage(),
    );
  }
}
