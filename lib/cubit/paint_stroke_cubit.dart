import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:draw_app_bloc/models/paint_stroker.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

part 'paint_stroke_state.dart';

class PaintStrokeCubit extends Cubit<PaintStrokeState> {
  PaintStrokeCubit()
      : super(const NormalPaintStrokeState([], Colors.pink, 10.0));

  changeColor(Color c) =>
      emit(UnPaintStrokeState(state.strokes, c, state.currentWidth));

  changeWidth(double width) =>
      emit(UnPaintStrokeState(state.strokes, state.currentColor, width));

  onPanDown(Offset offset) {
    PaintStroke p =
        PaintStroke(state.currentColor, state.currentWidth, [offset]);
    emit(NormalPaintStrokeState(
        [...state.strokes, p], state.currentColor, state.currentWidth));
  }

  onPanUpdate(Offset offset) {
    state.strokes[state.strokes.length - 1].paintedPoint.add(offset);
    emit(NormalPaintStrokeState(
        state.strokes, state.currentColor, state.currentWidth));
  }
}
