import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class PaintStroke extends Equatable {
  final Color color;
  final double strokeWidth;
  final List<Offset> paintedPoint;

  const PaintStroke(this.color, this.strokeWidth, this.paintedPoint);

  @override
  List<Object?> get props => [color, strokeWidth, paintedPoint.length];
}
