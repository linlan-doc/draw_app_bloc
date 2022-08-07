import 'package:flutter/material.dart';

import '../stroke_width_dialog.dart';

class StokeWidthOption extends StatelessWidget {
  const StokeWidthOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: FloatingActionButton(
        onPressed: () => {
          showDialog(
              context: context, builder: (context) => const StrokeWidthDialog())
        },
        child: const Icon(Icons.lens),
      ),
    );
  }
}
