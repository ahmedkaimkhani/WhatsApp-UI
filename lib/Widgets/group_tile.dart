import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/Widgets/chat_tile.dart';

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
    return CustomChatStyle(
      name: name,
      subtitle: subtitle,
      time: time,
      image: image,
    );
  }
}
