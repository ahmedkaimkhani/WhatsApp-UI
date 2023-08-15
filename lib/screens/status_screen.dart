import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/Widgets/status_tile.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomStatusStyle(
          name: '',
          subtitle: '',
          image: null,
        ),
      ],
    );
  }
}
