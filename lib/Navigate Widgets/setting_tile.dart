import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/Styling/styling.dart';

class CustomSettingStyle extends StatelessWidget {
  const CustomSettingStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: customListTile(),
          title: const Text(
            'Ahmed Kaim Khani',
            style: Styling.font_16,
          ),
          subtitle: const Text(
            'Chasing goals.',
            style: Styling.font_14,
          ),
        )
      ],
    );
  }
}

customListTile() {
  return const ListTile(
    leading: CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage('assets/images/mine.jpg'),
    ),
  );
}
