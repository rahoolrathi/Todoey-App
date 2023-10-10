import 'package:flutter/material.dart';

import '../custom_widgets/task_list.dart';
class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: (){
        },
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget>[
      Container(
        padding:EdgeInsets.only(top: 60.0,
        left:30,right:30.0,bottom: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget>[
        CircleAvatar(
          backgroundColor: Colors.white,
            child: Icon(Icons.list,
            size: 30,
            color: Colors.lightBlueAccent,
            ),
          radius: 30,
        ),
         SizedBox(height: 10,),

          Text("Todoey",
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text('12 tasks',
          style: TextStyle(
            color:Colors.white,
            fontSize: 12,

          ),
          ),

        ]
      ),
      ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),

                  )
              ),
              child:TaskList(),

            ),

          )
    ],
    ),
    );
  }
}



