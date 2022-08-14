import 'package:draw_app_bloc/cubit/drawing_option_cubit.dart';
import 'package:draw_app_bloc/views/draw_option/clear_drawing_option.dart';
import 'package:draw_app_bloc/views/draw_option/color_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'stoke_width_option.dart';

class DrawingOptionColumn extends StatelessWidget {
  const DrawingOptionColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowDrawingCubit, int>(builder: (context, state) {
      return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              switchInCurve: Curves.easeIn,
              child: state == 1
                  ? Column(
                      key: const Key("option_show"),
                      children: const [
                        ClearDrawingOptions(),
                        StokeWidthOption(),
                        ColorOption(),
                      ],
                    )
                  : Column(
                      key: const Key("option_hide"),
                    ),
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: state == 1
                  ? FloatingActionButton(
                      key: const Key("fab_1"),
                      backgroundColor: Colors.red,
                      onPressed: () => {
                        context
                            .read<ShowDrawingCubit>()
                            .showDrawingOptionClick()
                      },
                      child: const Icon(Icons.close),
                    )
                  : FloatingActionButton(
                      backgroundColor: Colors.blue,
                      key: const Key("fab_2"),
                      onPressed: () => {
                        context
                            .read<ShowDrawingCubit>()
                            .showDrawingOptionClick()
                      },
                      child: const Icon(Icons.brush),
                    ),
            )
          ]);
    });
  }
}
