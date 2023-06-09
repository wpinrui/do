import 'package:flutter/material.dart';

import '../model/task.dart';
import 'task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  final Function checkboxCallback;
  const TasksList({
    super.key,
    required this.tasks,
    required this.checkboxCallback,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          task: widget.tasks[index],
          checkboxCallback: () => widget.checkboxCallback(index),
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
