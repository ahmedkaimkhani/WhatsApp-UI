import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/Styling/styling.dart';

Widget customListTile({
  String? image,
  IconData? icon,
  String? text,
}) {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: ListTile(
      leading: image != null
          ? CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(image),
            )
          : Icon(icon),
      title: const Text(
        'Ahmed Kaim Khani',
        style: Styling.font_18,
      ),
      subtitle: const Text(
        'Chasing goals.',
        style: Styling.font_14,
      ),
      trailing: text != null
          ? Text(text)
          : Icon(
              icon,
              size: 30,
              color: Colors.teal,
            ),
    ),
  );
}
