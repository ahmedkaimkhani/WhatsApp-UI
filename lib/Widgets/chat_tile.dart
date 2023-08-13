import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String subtitle;
  final String time;
  final String? image;
  const ChatTile(
      {super.key,
      required this.name,
      required this.subtitle,
      required this.time,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: image != null
            ? AssetImage(image!)
            : null, // Set backgroundImage to null when no image is provided
        child: image == null
            ? const Icon(Icons.account_circle) // Use the default icon here
            : null,
      ),
      title: Text(name),
      subtitle: Text(subtitle),
      trailing: Text(time),
    );
  }
}
