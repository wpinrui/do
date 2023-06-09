import 'package:flutter/material.dart';

import '../model/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final Function checkboxCallback;

  const TaskTile({
    super.key,
    required this.task,
    required this.checkboxCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: SingleChildScrollView(
            child: Text(
              task.name,
              style: TextStyle(
                fontSize: 20,
                decoration: task.isDone ? TextDecoration.lineThrough : null,
              ),
            ),
          ),
        ),
        Checkbox(
          value: task.isDone,
          onChanged: (value) {
            checkboxCallback();
          },
        ),
      ],
    );
  }
}
