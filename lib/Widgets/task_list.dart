import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_day/Widgets/task_tile.dart';
import 'package:to_day/modals/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return Tasktile(
            taskTitle: taskData.tasks[index].name,
            ischecked: taskData.tasks[index].isdone,
            checkboxcallback: (bool checkboxState) {
              taskData.updateTask(taskData.tasks[index]);
            },
            longpresscallback: () {
              taskData.deleteTask(taskData.tasks[index]);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
