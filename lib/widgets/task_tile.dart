import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    super.key,
  });

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkboxCallback(bool? currentState) {
    setState(() {
      isChecked = currentState!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: SingleChildScrollView(
            child: Text(
              'This is an easy task.',
              style: TextStyle(
                fontSize: 20,
                decoration: isChecked ? TextDecoration.lineThrough : null,
              ),
            ),
          ),
        ),
        TaskCheckbox(isChecked: isChecked, callback: checkboxCallback),
      ],
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool isChecked;
  final void Function(bool?) callback;
  const TaskCheckbox(
      {super.key, required this.isChecked, required this.callback});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (value) {
        callback(value);
      },
    );
  }
}
