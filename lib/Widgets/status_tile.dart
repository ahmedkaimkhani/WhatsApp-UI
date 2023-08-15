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
        Padding(
          padding: EdgeInsets.only(bottom: 08),
          child: ListTile(
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

class CustomStatusStyle extends StatelessWidget {
  final String name;
  final String subtitle;
  final String? image;
  final Color? borderColor;
  const CustomStatusStyle(
      {super.key,
      required this.name,
      required this.subtitle,
      this.image,
      this.borderColor});

  @override
  Widget build(BuildContext context) {
    final actualColor = borderColor ?? CustomColor.colorRecentStatus;

    return Column(
      children: [
        ListTile(
          leading: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: actualColor, width: 2.5),
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

class CustomColor {
  static const colorRecentStatus = Colors.teal;
  static const colorViewedStatus = Colors.grey;
}
