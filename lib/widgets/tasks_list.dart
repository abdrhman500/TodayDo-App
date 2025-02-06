import 'package:flutter/material.dart';
import 'package:to_day_do/models/task.dart';
import 'package:to_day_do/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  List<Task> tasks;
  TasksList(this.tasks, {super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(
          isChecked: widget.tasks[index].isDone,
          taskTitle: widget.tasks[index].name,
          checkBoxChange: (newValue) {
            setState(() {
              widget.tasks[index].doneChange();
            });
          },
        );
      },
    );
  }
}
