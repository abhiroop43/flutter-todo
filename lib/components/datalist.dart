import 'package:flutter/material.dart';

import '../models/todo.dart';
import 'listitem.dart';

class DataList extends StatelessWidget {
  final List<Todo> todos;

  const DataList({super.key, required this.todos});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        final item = todos[index];
        return ListItem(
          todo: item,
        );
      },
    );
  }
}
