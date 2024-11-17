import 'package:flutter/material.dart';

import '../../models/todo.dart';

class TodoDetails extends StatelessWidget {
  final Todo todo;

  const TodoDetails({required Key key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.taskName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(todo.taskDescription),
      ),
    );
  }
}