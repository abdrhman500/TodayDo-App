import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_day_do/models/task_data.dart';
import 'package:to_day_do/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (BuildContext context, int index) {
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkBoxChange: (newValue) {
                taskData.updateTask(taskData.tasks[index]);
              },
              deleteTask: () {
                taskData.taskDelete(taskData.tasks[index]);
              },
            );
          },
        );
      },
    );
  }
}
