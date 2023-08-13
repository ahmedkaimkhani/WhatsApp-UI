
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

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