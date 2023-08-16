import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/Navigate%20Widgets/setting_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text('Settings'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Column(
        children: [
          customListTile(
            image: 'assets/images/mine.jpg',
            icon: Icons.qr_code,
          ),
          Divider(
            color: Colors.grey,
            thickness: 0.1,
          )
        ],
      ),
    );
  }
}
