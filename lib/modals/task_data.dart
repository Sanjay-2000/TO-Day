import 'package:flutter/material.dart';
import 'package:to_day/modals/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'tasks'),
    Task(name: 'tasks1'),
    Task(name: 'tasks2'),
    Task(name: 'tasks'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
