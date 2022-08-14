import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/drawing_option_cubit.dart';
import '../cubit/paint_stroke_cubit.dart';
import '../stroke_painter.dart';

class PaintBoard extends StatelessWidget {
  const PaintBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanDown: (details) {
        context.read<ShowDrawingCubit>().closeOption();
        context.read<PaintStrokeCubit>().onPanDown(details.localPosition);
      },
      onPanUpdate: (details) =>
          context.read<PaintStrokeCubit>().onPanUpdate(details.localPosition),
      child: Container(
        color: Colors.white,
        child: BlocConsumer<PaintStrokeCubit, PaintStrokeState>(
          listener: (context, state) {},
          buildWhen: (previous, current) {
            if (current is NormalPaintStrokeState) {
              return true;
            } else {
              return false;
            }
          },
          builder: (context, state) {
            NormalPaintStrokeState t = state as NormalPaintStrokeState;
            return CustomPaint(
              painter: StrokePainter(t),
              child: Container(),
            );
          },
        ),
      ),
    );
  }
}
