import 'package:flutter/material.dart';

class CallLink extends StatelessWidget {
  const CallLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.only(bottom: 08),
          child: ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.teal,
              child: Icon(
                Icons.link,
                color: Colors.white,
              ),
            ),
            title: Text(
              'Create call link',
              style: TextStyle(fontSize: 14),
            ),
            subtitle: Text(
              'Share a link for your WhatsApp call',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 18, bottom: 08),
          child: Text(
            'Recent updates',
            style: TextStyle(
                fontSize: 12, color: Color.fromARGB(255, 236, 140, 140)),
          ),
        ),
      ],
    );
  }
}
