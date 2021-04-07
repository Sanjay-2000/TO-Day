import 'package:flutter/material.dart';
import 'package:to_day/Widgets/task_tile.dart';
import 'package:to_day/modals/task.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  List<Task> tasks = [
    Task(name: 'tasks'),
    Task(name: 'tasks1'),
    Task(name: 'tasks2'),
    Task(name: 'tasks'),
    Task(name: 'tasks1'),
    Task(name: 'tasks2'),
    Task(name: 'tasks'),
    Task(name: 'tasks1'),
    Task(name: 'tasks2'),
  ];
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Tasktile(
          taskTitle: tasks[index].name,
          ischecked: tasks[index].isdone,
          checkboxcallback: (bool checkboxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
