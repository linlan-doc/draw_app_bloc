import 'package:bloc/bloc.dart';

//设置线条对话框使用的cubit
class StrokeWidthCubit extends Cubit<double> {
  StrokeWidthCubit() : super(10.0);

  changeStroke(double stokeWidth) => emit(stokeWidth);
}
