import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
  TaskTile(@required this.data);
  String data;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(data),
      trailing: Checkbox(
        value: false,
        onChanged: (bool? value) {
        },
      ),
    );
  }
}