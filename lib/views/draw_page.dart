import 'package:draw_app_bloc/views/draw_option/drawing_option_column.dart';
import 'package:draw_app_bloc/views/paint_board.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/paint_stroke_cubit.dart';

class DrawPage extends StatelessWidget {
  const DrawPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DrawApp'),
      ),
      body: const PaintBoard(),
      floatingActionButton: const DrawingOptionColumn(),
    );
  }
}
