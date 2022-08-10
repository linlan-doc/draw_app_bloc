import 'package:draw_app_bloc/cubit/stroke_width_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StrokeWidthDialog extends StatelessWidget {
  const StrokeWidthDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StrokeWidthCubit, double>(
      builder: (context, state) {
        return SimpleDialog(
          title: const Text("Stroke Width"),
          children: [
            Container(
                height: 45,
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Center(
                  child: Container(
                    width: state,
                    height: state,
                    decoration: const BoxDecoration(
                        color: Colors.black, shape: BoxShape.circle),
                  ),
                )),
            Slider(
              value: state,
              min: 1.0,
              max: 30.0,
              onChanged: (d) {
                context.read<StrokeWidthCubit>().changeStroke(d);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SimpleDialogOption(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    "Cancel",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                SimpleDialogOption(
                  onPressed: () => Navigator.pop(
                      context, context.read<StrokeWidthCubit>().state),
                  child: const Text(
                    "Confirm",
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            )
          ],
        );
      },
    );
  }
}
