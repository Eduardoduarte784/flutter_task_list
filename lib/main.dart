import 'package:flutter/material.dart';
import 'package:flutter_task_list/data/task_inherited.dart';
import 'package:flutter_task_list/screens/form_screen.dart';
import 'package:flutter_task_list/screens/initial_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TaskInherited(
        child: const InitialScreen(),
      ),
    );
  }
}
