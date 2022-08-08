import 'package:draw_app_bloc/views/color_dialog.dart';
import 'package:flutter/material.dart';

class ColorOption extends StatelessWidget {
  const ColorOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: FloatingActionButton(
        onPressed: () => {
          showDialog(
              context: context, builder: (context) => const ColorDialog())
        },
        child: const Icon(Icons.color_lens),
      ),
    );
  }
}
