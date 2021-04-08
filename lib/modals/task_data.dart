import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:to_day/modals/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'tasks'),
    Task(name: 'tasks1'),
    Task(name: 'tasks2'),
    Task(name: 'tasks'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
