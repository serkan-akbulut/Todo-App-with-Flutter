import 'package:todoey_flutter/models/tasks.dart';
import 'package:flutter/foundation.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{

  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'buy bread'),
  ];

  int get taskCount{
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  void changeString(String newTaskTile)
  {
    _tasks.add(Task(name: newTaskTile));
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
}
void removeTask(Task task){
    _tasks.remove(task);
    notifyListeners();
}

}

