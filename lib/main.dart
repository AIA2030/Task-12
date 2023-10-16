import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/view_model/view_model.dart';
import 'package:todolist/views/task_view.dart';



void main() {
  runApp(
      ChangeNotifierProvider(create: (context)=> ViewModel() , child:  const MyApp(), )
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TaskPage() ,
    );
  }
}