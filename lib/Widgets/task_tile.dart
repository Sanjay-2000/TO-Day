import 'package:flutter/material.dart';

class Tasktile extends StatelessWidget {
  final bool ischecked;
  final String taskTitle;
  final Function checkboxcallback;
  final Function longpresscallback;
  Tasktile(
      {this.ischecked,
      this.taskTitle,
      this.checkboxcallback,
      this.longpresscallback});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            taskTitle,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                decoration: ischecked ? TextDecoration.lineThrough : null),
          ),
          tileColor: Colors.redAccent[400],
          trailing: Checkbox(
            activeColor: Colors.white,
            checkColor: Colors.redAccent[400],
            value: ischecked,
            onChanged: checkboxcallback,
          ),
          onLongPress: longpresscallback,
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
