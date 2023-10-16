import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/view_model/view_model.dart';
import 'package:todolist/views/add_task.dart';
import 'package:todolist/views/header.dart';
import 'package:todolist/views/task_info.dart';

void main() {
  runApp( ChangeNotifierProvider(create: (context)=> ViewModel(), child: const MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

    SafeArea(
      bottom: false,
      child:   Column(

        children: [

          Expanded(
              flex: 1,
              child: Header()),

          Expanded(
              flex: 1,
              child: TaskInfo()),

          Expanded(
              flex: 7,
              child: ListView()),
        ],
      ),
    ),

      floatingActionButton:  AddTask(),

    );
  }
}
