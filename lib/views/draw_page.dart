import 'package:draw_app_bloc/cubit/drawing_option_cubit.dart';
import 'package:draw_app_bloc/views/drawing_option_column.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawPage extends StatelessWidget {
  const DrawPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DrawApp'),
      ),
      body: Container(),
      floatingActionButton: const DrawingOptionColumn(),
    );
  }
}
