import 'package:draw_app_bloc/cubit/color_selection_cubit.dart';
import 'package:draw_app_bloc/cubit/drawing_option_cubit.dart';
import 'package:draw_app_bloc/cubit/stroke_width_cubit.dart';
import 'package:draw_app_bloc/views/draw_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/paint_stroke_cubit.dart';

class DrawApp extends StatelessWidget {
  const DrawApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ShowDrawingCubit()),
        BlocProvider(
          create: (context) => StrokeWidthCubit(),
        ),
        BlocProvider(create: (context) => ColorSelectionCubit()),
        BlocProvider(create: (context) => PaintStrokeCubit())
      ],
      child: const MaterialApp(
        title: "DrawApp",
        home: DrawPage(),
      ),
    );
  }
}
