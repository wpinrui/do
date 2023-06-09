import 'package:flutter/material.dart';

import '../model/task.dart';
import 'task_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  void checkboxCallback(int index) {
    setState(() {
      tasks[index].toggle();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          task: tasks[index],
          checkboxCallback: () => checkboxCallback(index),
        );
      },
      itemCount: tasks.length,
    );
  }
}
