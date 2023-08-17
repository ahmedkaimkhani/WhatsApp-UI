import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/Styling/styling.dart';

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
            'Recent',
            style: TextStyle(
                fontSize: 12, color: Color.fromARGB(255, 236, 140, 140)),
          ),
        ),
      ],
    );
  }
}

class CustomCallStyle extends StatelessWidget {
  final String name;
  final String subtitle;
  final String? image;
  final String? calling;
  const CustomCallStyle({
    super.key,
    required this.name,
    required this.subtitle,
    this.image,
    this.calling,
  });

  @override
  Widget build(BuildContext context) {
    Widget callingIcon;

    if (calling == 'incoming') {
      callingIcon = CallIcon.inComing;
    } else if (calling == 'outgoing') {
      callingIcon = CallIcon.outGoing;
    } else {
      callingIcon = CallIcon.missed;
    }

    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey[700],
            backgroundImage: image != null
                ? AssetImage(image!)
                : null, // Set backgroundImage to null when no image is provided
            child: image == null
                ? const Center(
                    child: Icon(
                    Icons.account_circle,
                    size: 30,
                    color: Colors.white,
                  ))
                : null,
          ),
          title: Text(
            name,
            style: const TextStyle(fontSize: 14),
          ),
          subtitle: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: callingIcon,
              ),
              Text(
                subtitle,
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
          trailing: const Icon(
            Icons.call,
            color: Colors.teal,
          ),
        ),
      ],
    );
  }
}
