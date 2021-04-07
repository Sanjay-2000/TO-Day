import 'package:flutter/material.dart';
import 'text_tile.dart';
import 'package:to_day/modals/task.dart';
import 'package:to_day/Widgets/text_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

List<Task> tasks = [
  Task(name: 'Meditate for 20 mins'),
  Task(name: 'Meditate for 20 mins'),
  Task(name: 'Meditate for 20 mins'),
];

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Texttile();
    });
  }
}
