import 'package:flutter/material.dart';

import '../model/task.dart';
import '../widgets/tasks_list.dart';
import 'add_task_screen.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [];

  void addTask(String newTaskTitle) {
    setState(() {
      tasks.add(Task(name: newTaskTitle));
    });
  }

  void checkboxCallback(int index) {
    setState(() {
      tasks[index].toggle();
    });
  }

  @override
  Widget build(BuildContext context) {
    final numTasks =
        tasks.fold(0, (wish, task) => wish + (task.isDone ? 0 : 1));
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            backgroundColor: Colors.white,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen(
                  addTaskCallback: addTask,
                ),
              ),
            ),
          );
        },
      ),
      body: Container(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(45, 60, 45, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Icon(Icons.list,
                          size: 30.0, color: Colors.lightBlueAccent),
                      backgroundColor: Colors.white,
                      radius: 30.0,
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Your Tasks',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 55.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      '$numTasks Task${numTasks == 1 ? '' : 's'}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 45, vertical: 20),
                    child: TasksList(
                      tasks: tasks,
                      checkboxCallback: checkboxCallback,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
