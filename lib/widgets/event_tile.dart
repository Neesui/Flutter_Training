import 'package:flutter/material.dart';

class EventTile extends StatelessWidget {
  const EventTile({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.blue[200],
      title: Text(title),
      subtitle: Text(description),
      onTap: () {},
    );
  }
}
