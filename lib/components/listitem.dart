import 'dart:developer';

import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final int id;
  final String title;
  final String subtitle;

  const ListItem(
      {super.key,
      required this.id,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      key: Key(id.toString()),
      title: ElevatedButton(
        onPressed: () {
          log('$id pressed');
        },
        style: ButtonStyle(
          alignment: Alignment.centerLeft,
          backgroundColor: WidgetStateProperty.all<Color>(
              Theme.of(context).colorScheme.primary),
        ),
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              title,
              style: Theme.of(context).textTheme.headlineSmall,
            )),
      ),
    );
  }
}
