import 'package:flutter/material.dart';
import 'tasks_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList({this.tasks});
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTittle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkBoxCallBack: (checkBoxState) {
            setState(() {
              widget.tasks[index].isDone = checkBoxState;
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
