import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/main.dart';
import 'package:todolist/view_model/view_model.dart';

class TaskInfo extends StatelessWidget {
  const TaskInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer <ViewModel>(builder: (context, viewModel, child) {

      return Row(
        children: [
          Expanded( child: Card(
            child: Column(
              children: [
                Text("Total Task"),
                Text("Number is ${viewModel.getlengthtask()}"),
              ],
            ),
          )),

          Expanded( child: Card(
            child: Column(
              children: [
                Text("Remaining Task"),
                Text("Number is ${viewModel.numofnotcompelte()}"),
              ],
            ),
          )),

        ],
      );

     });


  }
}
