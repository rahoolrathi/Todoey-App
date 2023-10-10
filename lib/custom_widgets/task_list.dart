import 'package:flutter/cupertino.dart';
import 'package:todeoy_app/custom_widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile("Task 1"),
        TaskTile("Task 1"),
        TaskTile("Task 2"),
      ],
    );
  }
}