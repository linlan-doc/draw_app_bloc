import 'package:draw_app_bloc/cubit/drawing_option_cubit.dart';
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
            switchInCurve: Curves.easeInSine,
            child: state == 1
                ? Column(
                    key: const Key("option_show"),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: FloatingActionButton(
                          onPressed: () => {},
                          child: const Icon(Icons.clear),
                        ),
                      ),
                      const StokeWidthOption(),
                      const ColorOption(),
                    ],
                  )
                : Column(
                    key: const Key("option_hide"),
                  ),
          ),
          FloatingActionButton(
            onPressed: () =>
                context.read<ShowDrawingCubit>().showDrawingOptionClick(),
            child: const Icon(Icons.brush),
          )
        ],
      );
    });
  }
}
