import 'package:draw_app_bloc/cubit/drawing_option_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'draw_option/stoke_width_option.dart';

class DrawingOptionColumn extends StatelessWidget {
  const DrawingOptionColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowDrawingCubit, int>(builder: (context, state) {
      //show icons
      if (state == 1) {
        return Column(
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
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: FloatingActionButton(
                onPressed: () => {},
                child: const Icon(Icons.color_lens),
              ),
            ),
            FloatingActionButton(
              onPressed: () =>
                  context.read<ShowDrawingCubit>().showDrawingOptionClick(),
              child: const Icon(Icons.brush),
            )
          ],
        );
      } else {
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () =>
                  context.read<ShowDrawingCubit>().showDrawingOptionClick(),
              child: const Icon(Icons.brush),
            )
          ],
        );
      }
    });
  }
}
