import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/Widgets/group_tile.dart';

class GroupScreen extends StatelessWidget {
  const GroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomGroupStyle(
          name: 'SMIT0011-Flutter-2023',
          subtitle: '~ <S-M-M-S>: W8 for end',
          time: '12:31 AM',
          image: 'assets/images/smit.png',
        ),
      ],
    );
  }
}
