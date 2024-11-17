import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todo_app/pages/todo/tododetails.dart';

import '../models/todo.dart';

class ListItem extends StatelessWidget {
  final Todo todo;

  const ListItem({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      key: Key(todo.id.toString()),
      title: ElevatedButton(
        onPressed: () {
          log('${todo.id} pressed');
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      TodoDetails(key: Key(todo.id.toString()), todo: todo)));
        },
        style: ButtonStyle(
          alignment: Alignment.centerLeft,
          backgroundColor: WidgetStateProperty.all<Color>(
              Theme.of(context).colorScheme.primary),
        ),
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              todo.taskName,
              style: Theme.of(context).textTheme.headlineSmall,
            )),
      ),
    );
  }
}
