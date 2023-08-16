import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/Widgets/status_tile.dart';

import '../Styling/styling.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          StatusUpdate(),
          CustomStatusStyle(
            name: 'Ahmed',
            subtitle: '24 minutes ago',
            image: null,
          ),
          CustomStatusStyle(
            name: 'Asim',
            subtitle: 'Today, 3:01 PM',
            image: 'assets/images/asim.jpg',
          ),
          CustomStatusStyle(
            name: 'Usman',
            subtitle: 'Today, 2:15 PM',
            image: 'assets/images/usman.jpg',
          ),
          CustomStatusStyle(
            name: 'Arbaz',
            subtitle: 'Today, 1:33 PM',
            image: 'assets/images/arbaz.jpg',
          ),
          CustomStatusStyle(
            name: 'Naveed',
            subtitle: 'Today, 1:10 PM',
            image: 'assets/images/naveed.jpg',
          ),
          CustomStatusStyle(
            name: 'Areesh',
            subtitle: 'Today, 12:13 PM',
          ),

          // Viewed Status
          Padding(
            padding: EdgeInsets.only(left: 18, top: 08, bottom: 08),
            child: Text(
              'Viewed updates',
              style: TextStyle(
                  fontSize: 12, color: Color.fromARGB(255, 236, 140, 140)),
            ),
          ),
          CustomStatusStyle(
            name: 'Awais',
            subtitle: 'Today, 11:58 AM',
            image: 'assets/images/awais.jpg',
            borderColor: CustomColor.colorViewedStatus,
          ),
          CustomStatusStyle(
            name: 'Faish SMIT',
            subtitle: 'Today, 11:12 AM',
            borderColor: CustomColor.colorViewedStatus,
          ),
          CustomStatusStyle(
            name: 'Hamza',
            subtitle: 'Today, 9:58 AM',
            image: 'assets/images/hamza.jpg',
            borderColor: CustomColor.colorViewedStatus,
          ),
          CustomStatusStyle(
            name: 'Saim',
            subtitle: 'Today, 8:05 AM',
            image: 'assets/images/saim.jpg',
            borderColor: CustomColor.colorViewedStatus,
          ),
          CustomStatusStyle(
            name: 'Imran',
            subtitle: 'Today, 3:30 AM',
            image: 'assets/images/imran.jpg',
            borderColor: CustomColor.colorViewedStatus,
          ),
          CustomStatusStyle(
            name: 'Kashif',
            subtitle: 'Today, 1:41 AM',
            image: 'assets/images/kashif.jpg',
            borderColor: CustomColor.colorViewedStatus,
          ),
          CustomStatusStyle(
            name: 'Faizan',
            subtitle: 'Yesterday, 9:36 PM',
            image: 'assets/images/faizan.jpg',
            borderColor: CustomColor.colorViewedStatus,
          ),
        ],
      ),
    );
  }
}
