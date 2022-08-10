import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'color_selection_state.dart';

class ColorSelectionCubit extends Cubit<ColorSelectionState> {
  ColorSelectionCubit() : super(const ColorSelectionState(0, Colors.pink));

  colorSelect(int index, Color color) =>
      emit(ColorSelectionState(index, color));
}
