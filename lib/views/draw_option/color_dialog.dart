import 'package:draw_app_bloc/views/draw_option/color_selection_widget.dart';
import 'package:flutter/material.dart';

class ColorDialog extends StatelessWidget {
  final List<ColorSelectionWidget> widgetList = const [
    ColorSelectionWidget(
        index: 0, color: Colors.pink, selectedColor: Colors.black),
    ColorSelectionWidget(
      index: 1,
      color: Colors.red,
      selectedColor: Colors.black,
    ),
    ColorSelectionWidget(
        index: 2, color: Colors.deepOrange, selectedColor: Colors.black),
    ColorSelectionWidget(
        index: 3, color: Colors.orange, selectedColor: Colors.black),
    ColorSelectionWidget(
        index: 4, color: Colors.amber, selectedColor: Colors.black),
    ColorSelectionWidget(
        index: 5, color: Colors.yellow, selectedColor: Colors.black),
    ColorSelectionWidget(
        index: 6, color: Colors.lightGreen, selectedColor: Colors.black),
    ColorSelectionWidget(
        index: 7, color: Colors.green, selectedColor: Colors.black),
    ColorSelectionWidget(
        index: 8, color: Colors.teal, selectedColor: Colors.black),
    ColorSelectionWidget(
        index: 9, color: Colors.cyan, selectedColor: Colors.black),
    ColorSelectionWidget(
        index: 10, color: Colors.lightBlue, selectedColor: Colors.black),
    ColorSelectionWidget(
        index: 11, color: Colors.blue, selectedColor: Colors.black),
    ColorSelectionWidget(
        index: 12, color: Colors.indigo, selectedColor: Colors.white),
    ColorSelectionWidget(
        index: 13, color: Colors.purple, selectedColor: Colors.black),
    ColorSelectionWidget(
        index: 14, color: Colors.deepPurple, selectedColor: Colors.white),
    ColorSelectionWidget(
        index: 15, color: Colors.blueGrey, selectedColor: Colors.black),
    ColorSelectionWidget(
        index: 16, color: Colors.brown, selectedColor: Colors.black),
    ColorSelectionWidget(
        index: 17, color: Colors.grey, selectedColor: Colors.black),
    ColorSelectionWidget(
        index: 18, color: Colors.black, selectedColor: Colors.white),
    ColorSelectionWidget(
        index: 19, color: Colors.white, selectedColor: Colors.black),
  ];

  const ColorDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
        title: const Text('Brush color'),
        contentPadding: const EdgeInsets.all(12.0),
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                widgetList[0],
                widgetList[1],
                widgetList[2],
                widgetList[3],
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                widgetList[4],
                widgetList[5],
                widgetList[6],
                widgetList[7],
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                widgetList[8],
                widgetList[9],
                widgetList[10],
                widgetList[11],
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                widgetList[12],
                widgetList[13],
                widgetList[14],
                widgetList[15],
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                widgetList[16],
                widgetList[17],
                widgetList[18],
                widgetList[19],
              ]),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
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
                  onPressed: () => Navigator.pop(context, 1),
                  child: const Text(
                    "Confirm",
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
          )
        ]);
  }
}
