import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/Styling/styling.dart';

Widget customListTile({
  required String title,
  required String subtitle,
  String? image,
  IconData? icon,
  IconData? iconT,
  String? text,
  TextStyle? fontSizeT,
  TextStyle? fontSizeS,
}) {
  return ListTile(
    leading: image != null
        ? CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(image),
          )
        : Icon(
            icon,
            color: Colors.grey,
          ),
    title: Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Text(
        title,
        style: fontSizeT != null ? Styling.font_18 : Styling.font_14,
      ),
    ),
    subtitle: Text(
      subtitle,
      style: fontSizeS != null ? Styling.font_14 : Styling.font_12,
    ),
    trailing: text != null
        ? Text(text)
        : Icon(
            iconT,
            size: 30,
            color: Colors.teal,
          ),
  );
}
