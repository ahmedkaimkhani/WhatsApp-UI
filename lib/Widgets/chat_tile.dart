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
      this.image});

  @override
  Widget build(BuildContext context) {
    const double circleAvatarDiameter = 50 * 2;

    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.grey[700],
        backgroundImage: image != null
            ? AssetImage(image!)
            : null, // Set backgroundImage to null when no image is provided
        child: image == null
            ? const Center(
                child: Icon(
              Icons.account_circle,
              // size: 50,
              color: Colors.white,
            ))
            : null,
      ),
      title: Text(name),
      subtitle: Text(subtitle),
      trailing: Text(time),
    );
  }
}
