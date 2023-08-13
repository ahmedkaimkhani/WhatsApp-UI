import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String? subtitle;
  final String time;
  final String image;
  const ChatTile(
      {super.key,
      required this.name,
      this.subtitle,
      required this.time,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage('assets/images/ahmed.jpg'),
      ),
      title: Text('Ahmed Sheikh'),
      subtitle: Text('scene on hai'),
      trailing: Text('12:15 AM'),
    );
  }
}
