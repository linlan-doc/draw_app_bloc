import 'package:draw_app_bloc/cubit/color_selection_cubit.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class ColorSelectionWidget extends StatelessWidget {
  final int index; //当前颜色
  final Color color; //当前widget的背景颜色
  final Color
      selectedColor; //当前widget选中后，icon的颜色。只有黑色和白色的区别，如果widget背景色为亮色，则选中icon为黑色，反之为白色。
  const ColorSelectionWidget(
      {Key? key,
      required this.index,
      required this.color,
      required this.selectedColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () =>
            context.read<ColorSelectionCubit>().colorSelect(index, color),
        elevation: 1.0,
        backgroundColor: color,
        mini: true,
        child: BlocConsumer<ColorSelectionCubit, ColorSelectionState>(
          listener: (context, state) {},
          buildWhen: (previous, current) {
            //减少不必要的渲染，
            if (previous == current) {
              return false;
            } else {
              //只有当本次被选中，或者上次选中的widget才需要重新渲染
              return previous.selectedIndex == index ||
                  current.selectedIndex == index;
            }
          },
          builder: (context, state) {
            return state.selectedIndex == index
                ? Icon(
                    Icons.check,
                    color: selectedColor,
                  )
                : Container();
          },
        ));
  }
}
