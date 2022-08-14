import 'package:flutter/material.dart';

class ClearDrawingOptions extends StatelessWidget {
  const ClearDrawingOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 8),
            child: Text("Clear Borad"),
          ),
          FloatingActionButton(
            onPressed: () => {},
            child: const Icon(Icons.clear_all),
          ),
        ],
      ),
    );
  }
}
