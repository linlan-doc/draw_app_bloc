part of 'color_selection_cubit.dart';

@immutable
class ColorSelectionState extends Equatable {
  final int selectedIndex;
  final Color color;
  const ColorSelectionState(this.selectedIndex, this.color);

  @override
  List<Object?> get props => [selectedIndex, color];
}
