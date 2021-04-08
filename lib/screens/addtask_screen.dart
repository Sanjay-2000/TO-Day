import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  AddTaskScreen(this.addTaskCallback);
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
                onChanged: (value) {
                  newTaskTitle = value;
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              onPressed: () {
                addTaskCallback(newTaskTitle);
              },
              child: Text(
                'ADD',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.redAccent[400],
              minWidth: 160,
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
