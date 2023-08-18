import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/Navigate%20Widgets/profile_tile.dart';
import 'package:flutter_whatsapp_ui/Styling/styling.dart';

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
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: CustomProfileTile(
              subTitle: 'Ahmed kaim Khani',
              title: 'Name',
              iconL: Icons.person,
              iconR: Icons.edit,
              texT:
                  'This is not your username or pin. This name will be visible to your WhatsApp contacts.',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 63),
            child: CustomDivider.divider,
          ),
          const CustomProfileTile(
            title: 'About',
            subTitle: 'Chasing goals.',
            iconL: Icons.help_outline,
            iconR: Icons.edit,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 63),
            child: CustomDivider.divider,
          ),
          const CustomProfileTile(
            title: 'Phone',
            subTitle: '+92 3151717101',
            iconL: Icons.help_outline,
          ),
        ],
      ),
    );
  }
}
