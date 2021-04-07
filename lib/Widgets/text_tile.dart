import 'package:flutter/material.dart';

class Texttile extends StatefulWidget {
  @override
  _TexttileState createState() => _TexttileState();
}

class _TexttileState extends State<Texttile> {
  bool ischecked = false;

  void checkBoxCallBack(bool checkboxState) {
    setState(() {
      ischecked = checkboxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            'Tasks',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                decoration: ischecked ? TextDecoration.lineThrough : null),
          ),
          tileColor: Colors.redAccent[400],
          trailing: TaskCheckbox(
            checkboxstate: ischecked,
            toggleCheckBoxState: checkBoxCallBack,
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxstate;
  final Function toggleCheckBoxState;
  TaskCheckbox({this.checkboxstate, this.toggleCheckBoxState});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.white,
        checkColor: Colors.redAccent[400],
        value: checkboxstate,
        onChanged: toggleCheckBoxState);
  }
}
