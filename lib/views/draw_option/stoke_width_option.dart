import 'package:draw_app_bloc/cubit/paint_stroke_cubit.dart';
import 'package:flutter/material.dart';

import 'stroke_width_dialog.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class StokeWidthOption extends StatelessWidget {
  const StokeWidthOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PaintStrokeCubit paintStrokeCubit = context.read<PaintStrokeCubit>();
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Text("Stroke width"),
          ),
          FloatingActionButton(
            onPressed: () async {
              final newWidth = await showDialog(
                  context: context,
                  builder: (context) => const StrokeWidthDialog());
              if (newWidth != null) {
                paintStrokeCubit.changeWidth(newWidth);
              }
            },
            child: const Icon(Icons.lens),
          )
        ],
      ),
    );
  }
}
