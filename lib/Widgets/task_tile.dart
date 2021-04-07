import 'package:flutter/material.dart';

class Tasktile extends StatelessWidget {
  final bool ischecked;
  final String taskTitle;
  final Function checkboxcallback;
  Tasktile({this.ischecked, this.taskTitle, this.checkboxcallback});

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
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}

// class TaskCheckbox extends StatelessWidget {
//   final bool checkboxstate;
//   final Function toggleCheckBoxState;
//   TaskCheckbox({this.checkboxstate, this.toggleCheckBoxState});
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//         activeColor: Colors.white,
//         checkColor: Colors.redAccent[400],
//         value: checkboxstate,
//         onChanged: toggleCheckBoxState);
//   }
// }

// void checkBoxCallBack(bool checkboxState) {
//   setState(() {
//     ischecked = checkboxState;
//   });
// }
