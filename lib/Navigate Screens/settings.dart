import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/Navigate%20Widgets/setting_tile.dart';
import 'package:flutter_whatsapp_ui/Styling/styling.dart';

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
            padding: EdgeInsets.only(right: 13),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: customListTile(
                title: 'Account',
                subtitle: 'Security notifications, chnage number',
                icon: Icons.key,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: customListTile(
                title: 'Privacy',
                subtitle: 'Block contacts, disappearing messages',
                icon: Icons.lock,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: customListTile(
                title: 'Avatar',
                subtitle: 'Create, edit, profile photo',
                icon: Icons.account_circle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: customListTile(
                title: 'Chats',
                subtitle: 'Theme, wallpapers, chat history',
                icon: Icons.chat,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: customListTile(
                title: 'Notifications',
                subtitle: 'Message, group & call tones',
                icon: Icons.notifications,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: customListTile(
                title: 'Storage and data',
                subtitle: 'Network usage, auto-download',
                icon: Icons.data_saver_off,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: customListTile(
                title: 'App language',
                subtitle: 'English (phone\'s language)',
                icon: Icons.language,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: customListTile(
                title: 'Help',
                subtitle: 'help center, contactus, privacy ploicy',
                icon: Icons.help_outline,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: customListTile(
                title: 'Invite a friend',
                subtitle: '',
                icon: Icons.group,
              ),
            ),
            const Center(
                child: Text(
              'from',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            )),
            const SizedBox(
              height: 8,
            ),
            const Center(
                child: Text(
              'Ahmed',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
            )),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
