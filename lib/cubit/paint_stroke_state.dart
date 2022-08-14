part of 'paint_stroke_cubit.dart';

class PaintStrokeState {
  const PaintStrokeState(this.strokes, this.currentColor, this.currentWidth);

  final List<PaintStroke> strokes;
  final Color currentColor;
  final double currentWidth;

  @override
  bool operator ==(Object other) => false;
}

class UnPaintStrokeState extends PaintStrokeState {
  const UnPaintStrokeState(
      super.stokes, super.currentColor, super.currentWidth);
}

class NormalPaintStrokeState extends PaintStrokeState {
  const NormalPaintStrokeState(
      super.stokes, super.currentColor, super.currentWidth);
}
