import 'package:draw_app_bloc/views/draw_option/color_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/color_selection_cubit.dart';
import '../../cubit/paint_stroke_cubit.dart';

class ColorOption extends StatelessWidget {
  const ColorOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PaintStrokeCubit paintStrokeCubit = context.read<PaintStrokeCubit>();
    ColorSelectionCubit colorCubit = context.read<ColorSelectionCubit>();
    return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Text("Brush Color"),
            ),
            FloatingActionButton(
              onPressed: () async {
                final confirm = await showDialog(
                    context: context,
                    builder: (context) => const ColorDialog());
                if (confirm != null) {
                  paintStrokeCubit.changeColor(colorCubit.state.color);
                }
              },
              child: const Icon(Icons.color_lens),
            )
          ],
        ));
  }
}
