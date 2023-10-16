

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/view_model/view_model.dart';
import 'package:todolist/views/alert_button.dart';

class AddTask extends StatelessWidget {
  AddTask({super.key});

  final textuser = TextEditingController();
  final TextEditingController entryController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Consumer<ViewModel>(builder: (context, viewModel, child) {

      return
        FloatingActionButton(onPressed: (){


          Navigator.push(context, MaterialPageRoute(builder: (context)=>AlertshowDialog()));

        },
          child: Icon(Icons.add),
        )    ;
    });


  }
}
