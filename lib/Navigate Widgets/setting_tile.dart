import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/Styling/styling.dart';

Widget customListTile({
  required String title,
  required String subtitle,
  String? image,
  IconData? icon,
  String? text,
  TextStyle? fontSize,
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
      title: Text(
        title,
        style: fontSize != null ? Styling.font_18 : Styling.font_14,
      ),
      subtitle: Text(
        subtitle,
        style: fontSize != null ? Styling.font_14 : Styling.font_12,
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
