import 'package:flutter/material.dart';

import 'package:todolist/model/task_model.dart';
import 'package:todolist/model/user_model.dart';

class ViewModel extends ChangeNotifier{

  List<Tasks> tasks = <Tasks>[];
  
  User user =User('AM');

  String getusername(){
    return user.username;
  }

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
  
  void addTask( Tasks newTask ) {
    
    tasks.add(newTask);
    
    print(newTask);

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

  void bootombuilder(Widget bottomview, BuildContext context){
    showBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        context: context,
        builder: ((context) {
          return bottomview;
        }));
  }

}