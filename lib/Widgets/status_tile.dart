import 'package:flutter/material.dart';

class StatusUpdate extends StatelessWidget {
  const StatusUpdate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.teal,
            child: Icon(
              Icons.add_a_photo_rounded,
              color: Colors.white,
            ),
          ),
          title: Text(
            'My status',
            style: TextStyle(fontSize: 14),
          ),
          subtitle: Text(
            'Tap to add status update',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ),
        SizedBox(
          height: 08,
        ),
        Padding(
          padding: EdgeInsets.only(left: 18),
          child: Text(
            'Recent updates',
            style: TextStyle(color: Color.fromARGB(255, 236, 140, 140)),
          ),
        ),
        SizedBox(
          height: 08,
        ),
      ],
    );
  }
}

class CustomStatusStyle extends StatelessWidget {
  final String name;
  final String subtitle;
  final String? image;
  const CustomStatusStyle(
      {super.key, required this.name, required this.subtitle, this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.teal, width: 3),
            ),
            child: CircleAvatar(
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
          ),
          title: Text(
            name,
            style: const TextStyle(fontSize: 14),
          ),
          subtitle: Text(
            subtitle,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ),
      ],
    );
  }
}
