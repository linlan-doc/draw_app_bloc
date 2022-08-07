import 'package:bloc/bloc.dart';

class ShowDrawingCubit extends Cubit<int> {
  ShowDrawingCubit() : super(0);

  showDrawingOptionClick() {
    emit(1 - state);
  }
}
