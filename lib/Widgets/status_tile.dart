import 'package:flutter/material.dart';

class CustomStatusStyle extends StatelessWidget {
  const CustomStatusStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 20,
          ),
        )
      ],
    );
  }
}
