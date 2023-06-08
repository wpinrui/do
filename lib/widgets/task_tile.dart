import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
  });

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
              ),
            ),
          ),
        ),
        Checkbox(value: false, onChanged: (value) {})
      ],
    );
  }
}
