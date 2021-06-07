
import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'tasks_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task=taskData.tasks[index];
          return TaskTile(
            taskTile: task.name,
            isCheck: task.isDone,
            callBackFunction: (checkboxState) {
              taskData.updateTask(task);
            },
            longPress:() {
              taskData.removeTask(task);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
