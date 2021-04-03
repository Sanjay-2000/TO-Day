import 'package:flutter/material.dart';
import 'package:to_day/screens/addtask_screen.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent[400],
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) => AddTaskScreen(),
                isScrollControlled: false);
          },
          child: Icon(
            Icons.add,
            color: Colors.redAccent[400],
          ),
          backgroundColor: Colors.white,
          hoverColor: Colors.black),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 60, left: 30, right: 30, bottom: 30),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.list,
                        color: Colors.red,
                        size: 30,
                      ),
                      backgroundColor: Colors.white,
                      radius: 30,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'TO-Day',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Tasks for the day',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Tasks left',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                  top: 50,
                  left: 30,
                  right: 30,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: TaskList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

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
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class Texttile extends StatelessWidget {
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
          trailing: Checkbox(
            value: false,
            onChanged: (value) {},
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
