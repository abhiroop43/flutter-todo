import 'package:flutter/material.dart';
import 'package:todo_app/pages/todo/todolist.dart';

import 'shared/appstate.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        title: 'Todo App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Things To Do'),
            ),
            body: TodoList()),
      ),
    );
  }
}
