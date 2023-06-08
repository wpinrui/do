import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(45, 20, 45, 20),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.lightBlueAccent,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.0),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 0),
                    ),
                  ],
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: Colors.lightBlueAccent,
                      width: 2.0,
                    ),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  autofocus: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 24),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                ),
                child: Text(
                  'Add',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
