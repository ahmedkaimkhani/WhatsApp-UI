import 'package:flutter/material.dart';

class CustomStatusStyle extends StatelessWidget {
  const CustomStatusStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
          title: Text('My status'),
          subtitle: Text('Tap to add status update'),
        ),
      ],
    );
  }
}
