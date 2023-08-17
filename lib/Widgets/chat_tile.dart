import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/Styling/styling.dart';

class CustomChatStyle extends StatelessWidget {
  final String name;
  final String subtitle;
  final String time;
  final String? image;
  final IconData? icon;
  const CustomChatStyle(
      {super.key,
      required this.name,
      required this.subtitle,
      required this.time,
      this.image,
      this.icon});

  @override
  Widget build(BuildContext context) {
    Widget? trailingWidget;

    if (icon == 'seen') {
      trailingWidget = IconStyle.seenIcon;
    } else if (icon == 'unseen') {
      trailingWidget = IconStyle.unSeenIcon;
    }
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
      title: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text(
          name,
          style: const TextStyle(fontSize: 14),
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(color: Colors.grey, fontSize: 12),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            time,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
          if (trailingWidget != null) trailingWidget,
        ],
      ),
    );
  }
}
