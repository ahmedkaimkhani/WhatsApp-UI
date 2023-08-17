import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/Navigate%20Widgets/profile_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              height: 130,
              width: 130,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
              child: Image.asset(
                'assets/images/mine.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const CustomProfileTile(
            subTitle: 'Name',
            title: 'Ahmed',
            iconL: Icons.person,
            iconR: Icons.edit,
            texT: 'This is not your username or pin',
          )
        ],
      ),
    );
  }
}
