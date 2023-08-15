import 'package:flutter/material.dart';

class CustomStatusStyle extends StatelessWidget {
  final String name;
  final String subtitle;
  final String? image;
  const CustomStatusStyle(
      {super.key, required this.name, required this.subtitle, this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.teal,
            child: Icon(
              Icons.add_a_photo_rounded,
              color: Colors.white,
            ),
          ),
          title: Text('My status'),
          subtitle: Text('Tap to add status update'),
        ),
        const SizedBox(
          height: 08,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 18),
          child: Text(
            'Recent updates',
            style: TextStyle(color: Color.fromARGB(255, 236, 140, 140)),
          ),
        ),
        const SizedBox(
          height: 08,
        ),
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
          title: Text(name),
          subtitle: Text(subtitle),
        )
      ],
    );
  }
}
