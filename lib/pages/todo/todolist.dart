import 'package:flutter/material.dart';
import 'package:todo_app/models/todo.dart';
import 'package:todo_app/pages/todo/todocreate.dart';

import '../../components/datalist.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos = [
    Todo(1, 'Task 1', 'Description 1'),
    Todo(2, 'Task 2', 'Description 2'),
    Todo(3, 'Task 3', 'Description 3'),
  ];

  TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TodoCreate()));
              },
              icon: const Icon(Icons.add),
              label: const Text('New Task'),
            ),
          ],
        ),
        Expanded(
          child: DataList(todos: todos),
        ),
      ],
    );
  }
}
