import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_day/modals/task.dart';
import 'package:to_day/modals/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0Xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 6),
              child: Text(
                'Add Task',
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.redAccent[400],
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 16),
                decoration: InputDecoration(hintText: 'Add tasks here..'),
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              child: Text(
                'ADD',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.redAccent[400],
              minWidth: 160,
              height: 40,
              onPressed: () {
                print(newTaskTitle);
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle);

                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
