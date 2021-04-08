import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_day/Widgets/task_tile.dart';
import 'package:to_day/modals/task_data.dart';

class TaskList extends StatelessWidget {
//   @override
//   _TaskListState createState() => _TaskListState();
// }

// class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return Tasktile(
            taskTitle: taskData.tasks[index].name,
            ischecked: taskData.tasks[index].isdone,
            checkboxcallback: (bool checkboxState) {
              // setState(() {
              //   Provider.of<TaskData>(context).tasks[index].toggleDone();
              // });
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
