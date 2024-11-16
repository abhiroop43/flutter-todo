import 'package:flutter/material.dart';
import 'package:todo_app/components/listitem.dart';
import 'package:todo_app/models/todo.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos = [
    Todo(1, 'Task 1', 'Description 1'),
    Todo(2, 'Task 2', 'Description 2'),
    Todo(3, 'Task 3', 'Description 3'),
  ];

  TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    // return ListView.builder(
    //   itemCount: todos.length,
    //   itemBuilder: (context, index) {
    //     return ListTile(
    //       title: Text(todos[index].taskName),
    //       tileColor: Theme.of(context).colorScheme.primary,
    //       textColor: Theme.of(context).colorScheme.onPrimary,
    //       // subtitle: Text(todos[index].taskDescription),
    //     );
    //   },
    // );

    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        final item = todos[index];
        return ListItem(id: item.id, title: item.taskName, subtitle: '');
      },
    );
  }
}
