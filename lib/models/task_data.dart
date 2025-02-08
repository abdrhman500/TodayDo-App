import 'package:flutter/material.dart';
import 'package:to_day_do/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Go Shopping', isDone: true),
    Task(name: 'Write English Essay'),
    Task(name: 'Fill Water'),
    Task(name: 'Clean Bed room'),
    Task(name: 'Study the Lister', isDone: true),
    Task(name: 'Fix the Car'),
  ];

  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.doneChange();
    notifyListeners();
  }

  void taskDelete(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
