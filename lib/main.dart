import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_day_do/models/task_data.dart';
import 'package:to_day_do/screens/tasks_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}