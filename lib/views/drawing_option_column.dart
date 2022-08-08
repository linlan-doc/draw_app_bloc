import 'package:draw_app_bloc/cubit/drawing_option_cubit.dart';
import 'package:draw_app_bloc/views/draw_option/color_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'draw_option/stoke_width_option.dart';

class DrawingOptionColumn extends StatelessWidget {
  const DrawingOptionColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowDrawingCubit, int>(builder: (context, state) {
      return AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        switchInCurve:
            const Interval(0.0, 1.0 - 1 / 3 / 2.0, curve: Curves.easeIn),
        child: state == 1
            ? Column(
                key: const Key("option_show"),
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: FloatingActionButton(
                      onPressed: () => {},
                      child: const Icon(Icons.clear),
                    ),
                  ),
                  const StokeWidthOption(),
                  const ColorOption(),
                  FloatingActionButton(
                    onPressed: () => context
                        .read<ShowDrawingCubit>()
                        .showDrawingOptionClick(),
                    child: const Icon(Icons.brush),
                  )
                ],
              )
            : Column(
                key: const Key("option_hide"),
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: () => context
                        .read<ShowDrawingCubit>()
                        .showDrawingOptionClick(),
                    child: const Icon(Icons.brush),
                  )
                ],
              ),
      );
      //show icons
    });
  }
}
