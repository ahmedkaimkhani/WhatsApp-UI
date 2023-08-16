import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/Styling/styling.dart';

class CustomSettingStyle extends StatelessWidget {
  const CustomSettingStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customListTile(image: 'assets/images/mine.jpg'),
      ],
    );
  }
}

Widget customListTile({String? image, IconData? icon}) {
  return ListTile(
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
    trailing: const Icon(
      Icons.qr_code,
      color: Colors.teal,
      size: 30,
    ),
  );
}
