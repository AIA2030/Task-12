import 'package:flutter/material.dart';
import 'package:todolist/model/task_model.dart';
import 'package:todolist/model/user_model.dart';



class ViewModel extends ChangeNotifier{

  List<Tasks> tasks = <Tasks>[];

  User user =User('AM AI');

  void addtask( Tasks newTask){

    tasks.add(newTask);

    notifyListeners();
  }

  String get username => user.username;

  int numofnotcompelte(){
    return tasks.where((tasks) => !tasks.completed).length;
  }


  int getlengthtask(){

    return tasks.length;
  }

  void settaskvalue ( int taskindex, bool taskvalue ){

    tasks[taskindex].completed = taskvalue;

    notifyListeners();
  }


  void deletetask( int taskindex){

    tasks.removeAt(taskindex);

    notifyListeners();
  }

  String gettitleoftask(int index){

    return tasks[index].title;
  }

  bool getvalueoftask(int index){

    return tasks[index].completed;
  }

  void updateUsername(String newUsername){
  user.username = newUsername;
    notifyListeners();
  }

  void deletealltasks() {
    tasks.clear();
    notifyListeners();
  }

  void deleteCompletedTasks() {
    tasks = tasks.where((task) => !task.completed).toList();
    notifyListeners();
  }

  void bottomSheetBuilder(Widget bottomview, BuildContext context){
    showBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        context: context,
        builder: ((context) {
          return bottomview;
        }));
  }

}