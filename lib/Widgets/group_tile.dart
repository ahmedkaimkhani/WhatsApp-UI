import 'package:flutter/material.dart';

class CustomGroupStyle extends StatelessWidget {
  final String name;
  final String subtitle;
  final String time;
  final String? image;
  const CustomGroupStyle(
      {super.key,
      required this.name,
      required this.subtitle,
      required this.time,
      this.image});

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
      subtitle: Text(
        subtitle,
        style: const TextStyle(color: Colors.grey),
      ),
      trailing: Text(
        time,
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
