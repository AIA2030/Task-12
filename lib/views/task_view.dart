
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/views/add_task.dart';
import 'package:todolist/views/header_view.dart';
import 'package:todolist/views/list_view.dart';
import 'package:todolist/views/task_info.dart';



class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        bottom: false,
        child: Column(
          children: [

            Expanded(flex: 1,
                child: Header()),
            Expanded(flex: 1,
                child: TaskInfo()),
            Expanded(flex: 7,
                child:ListViewA()),


          ],
        ),
      ),
      floatingActionButton: AddTask(),  //create widget
    );
  }
}
