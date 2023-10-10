import 'package:flutter/material.dart';
class TaskTile extends StatefulWidget {
  String data;
  TaskTile(this.data);
  @override
  State<TaskTile> createState() => _TaskTileState(data);
}

class _TaskTileState extends State<TaskTile> {
  String data;
  bool ischecked=false;
  _TaskTileState(this.data);
  void checkboxcallback(bool checkboxstate){
    setState(() {
      ischecked=checkboxstate;
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(data,
        style: TextStyle(
          decoration: ischecked? TextDecoration.lineThrough:null),),
        trailing: TaskCheckBox(ischecked,checkboxcallback)
    );
  }
}






class  TaskCheckBox extends StatelessWidget {
  final bool ischecked;
  final Function togglecheckboxaction;
  TaskCheckBox(this.ischecked,this.togglecheckboxaction);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
    activeColor: Colors.lightBlueAccent,
    value: ischecked,
   onChanged:togglecheckboxaction(nevalue)gi,
    );
  }

