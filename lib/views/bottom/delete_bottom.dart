import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/view_model/view_model.dart';


class DeleteBottomSheet extends StatelessWidget {
  const DeleteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ViewModel>(builder: (context, viewModel, child ){
      return Container(
        height: 125,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ElevatedButton(
                onPressed: (){
                  viewModel.deletealltasks();
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.grey.shade50,
                    backgroundColor: Colors.grey.shade800,
                    textStyle:
                    TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
                child: Text("Delete All")
            ),

              SizedBox(
                width: 15,
              ),

              ElevatedButton(
                  onPressed: (){
                    viewModel.deleteCompletedTasks();
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.grey.shade50,
                      backgroundColor: Colors.grey.shade800,
                      textStyle:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                  child: Text("Delete Completed")
              ),

            ]

        ),
      );
    });
  }
}
