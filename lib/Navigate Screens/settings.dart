import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/Navigate%20Widgets/setting_tile.dart';
import 'package:flutter_whatsapp_ui/Styling/styling.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
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
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: customListTile(
                title: 'Ahmed Kaim Khani',
                subtitle: 'Chasing goals.',
                image: 'assets/images/mine.jpg',
                iconT: Icons.qr_code,
                fontSizeT: Styling.font_18,
                fontSizeS: Styling.font_14,
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 0.1,
            ),
            customListTile(
              title: 'Account',
              subtitle: 'Security notifications, chnage\nnumber',
              icon: Icons.key,
            ),
            customListTile(
              title: 'Privacy',
              subtitle: 'Block contacts, disappearing\nmessages',
              icon: Icons.lock,
            ),
            customListTile(
              title: 'Avatar',
              subtitle: 'Create, edit, profile photo',
              icon: Icons.account_circle,
            ),
            customListTile(
              title: 'Chats',
              subtitle: 'Theme, wallpapers, chat history',
              icon: Icons.chat,
            ),
            customListTile(
              title: 'Notifications',
              subtitle: 'Message, group & call tones',
              icon: Icons.notifications,
            ),
            customListTile(
              title: 'Storage and data',
              subtitle: 'Network usage, auto-download',
              icon: Icons.data_saver_off,
            ),
            customListTile(
              title: 'App language',
              subtitle: 'English (phone\'s language)',
              icon: Icons.language,
            ),
            customListTile(
              title: 'Help',
              subtitle: 'help center, contactus, privacy ploicy',
              icon: Icons.help_outline,
            ),
            customListTile(
              title: 'Invite a friend',
              subtitle: '',
              icon: Icons.group,
            ),
          ],
        ),
      ),
    );
  }
}
