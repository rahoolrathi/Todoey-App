

import 'package:flutter/material.dart';

class AddBottomSheet extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20)
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Text("Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent
            ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            ElevatedButton(onPressed: (){},
              child:Text("Add",style: TextStyle(

                color: Colors.white
              ),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent
              ),
            )
          ],
        ),

      ),
    );
  }
}
