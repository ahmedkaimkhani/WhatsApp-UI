import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/Widgets/call_tile.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          CallLink(),
          CustomCallStyle(
            name: 'Ahmed',
            subtitle: 'Today, 2:34 AM',
            image: null,
          ),
          CustomCallStyle(
            name: 'Asim',
            subtitle: 'Today, 1:28 AM',
            image: 'assets/images/asim.jpg',
          ),
          CustomCallStyle(
            name: 'Usman',
            subtitle: 'Yesterday, 8:45 PM',
            image: 'assets/images/usman.jpg',
          ),
          CustomCallStyle(
            name: 'Arbaz',
            subtitle: '(4) Yesterday, 5;12 PM',
            image: 'assets/images/arbaz.jpg',
          ),
          CustomCallStyle(
            name: 'Naveed',
            subtitle: '(2) Yesterday, 1:52 PM',
            image: 'assets/images/naveed.jpg',
          ),
          CustomCallStyle(
            name: 'Areesh',
            subtitle: '(5) August 14, 10:21 PM',
          ),
          CustomCallStyle(
            name: 'Awais',
            subtitle: 'August 14, 7:11 PM',
            image: 'assets/images/awais.jpg',
          ),
          CustomCallStyle(
            name: 'Faish SMIT',
            subtitle: '(3) August 12, 4:56 PM',
          ),
          CustomCallStyle(
            name: 'Hamza',
            subtitle: 'August 11, 9:15 AM',
            image: 'assets/images/hamza.jpg',
          ),
          CustomCallStyle(
            name: 'Saim',
            subtitle: '(4) August 11, 2:43 AM',
            image: 'assets/images/saim.jpg',
          ),
          CustomCallStyle(
            name: 'Imran',
            subtitle: '(2) August 10, 11:22 PM',
            image: 'assets/images/imran.jpg',
          ),
          CustomCallStyle(
            name: 'Kashif',
            subtitle: 'August 10, 2:11 PM',
            image: 'assets/images/kashif.jpg',
          ),
          CustomCallStyle(
            name: 'Faizan',
            subtitle: '(6) August 8, 8:16 PM',
            image: 'assets/images/faizan.jpg',
          ),
        ],
      ),
    );
  }
}
