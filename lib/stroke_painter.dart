import 'dart:ui';

import 'package:draw_app_bloc/cubit/paint_stroke_cubit.dart';
import 'package:draw_app_bloc/models/paint_stroker.dart';
import 'package:flutter/widgets.dart';

class StrokePainter extends CustomPainter {
  NormalPaintStrokeState paintState;
  StrokePainter(this.paintState);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    for (PaintStroke st in paintState.strokes) {
      paint.color = st.color;
      paint.strokeWidth = st.strokeWidth;
      paint.strokeCap = StrokeCap.round;

      for (int i = 0; i < st.paintedPoint.length - 1; i++) {
        canvas.drawLine(st.paintedPoint[i], st.paintedPoint[i + 1], paint);
      }
      canvas.drawPoints(PointMode.points,
          [st.paintedPoint[st.paintedPoint.length - 1]], paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
