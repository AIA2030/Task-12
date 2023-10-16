import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/view_model/view_model.dart';
import 'package:todolist/views/bottom/update_bottom.dart';
import 'package:todolist/views/bottom/delete_bottom.dart';
import 'package:todolist/views/bottom/setting_bottom.dart';


class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer <ViewModel> (builder: (context, viewModel, child) {

      return

        Row(
          children: [
            Expanded( flex: 3 ,child: Text("welcome ${viewModel.user}")),

            Expanded( flex: 1 ,child: IconButton( onPressed: () {

              viewModel.bootombuilder(SettingsBottom(), context);
            },

              icon: Icon(Icons.settings),
            )),

            Expanded( flex: 1 ,child: IconButton( onPressed: () {

              viewModel.bootombuilder(DeleteBottomSheet(), context);
            },

              icon: Icon(Icons.delete),
            )),
          ],
        );
     });

  }
}
