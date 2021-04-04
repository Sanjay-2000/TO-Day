import 'package:flutter/material.dart';
import 'text_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Texttile(),
        Texttile(),
        Texttile(),
        Texttile(),
        Texttile(),
        Texttile(),
        Texttile(),
        Texttile(),
        Texttile(),
        Texttile(),
        Texttile(),
        Texttile(),
        Texttile(),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
