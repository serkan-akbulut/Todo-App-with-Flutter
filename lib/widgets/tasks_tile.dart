import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.isCheck, this.taskTile,this.callBackFunction,this.longPress});

  final String taskTile;
  final bool isCheck;
  final Function longPress;
  final Function callBackFunction;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress:longPress,
        title: Text(
          taskTile,
          style: TextStyle(
            decoration:
                isCheck ? TextDecoration.lineThrough : TextDecoration.none,
          ),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isCheck,
          onChanged: callBackFunction,
        ));
  }
}
