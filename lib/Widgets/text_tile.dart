import 'package:flutter/material.dart';

class Texttile extends StatefulWidget {
  @override
  _TexttileState createState() => _TexttileState();
}

class _TexttileState extends State<Texttile> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            'Tasks',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          tileColor: Colors.redAccent[400],
          trailing: TaskCheckbox(ischecked),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}

// class Texttile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ListTile(
//           title: Text(
//             'Tasks',
//             style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
//           ),
//           tileColor: Colors.redAccent[400],
//           trailing: TaskCheckbox(),
//         ),
//         SizedBox(
//           height: 20,
//         )
//       ],
//     );
//   }
// }

class TaskCheckbox extends StatelessWidget {
  final bool checkboxstate;
  TaskCheckbox(this.checkboxstate);
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.white,
      checkColor: Colors.redAccent[400],
      value: true,
      onChanged: (value) {},
    );
  }
}
