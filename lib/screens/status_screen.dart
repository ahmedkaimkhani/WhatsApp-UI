import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/Widgets/status_tile.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          CustomStatusStyle(
            name: 'Ahmed',
            subtitle: 'set hai',
            image: null,
          ),
          CustomStatusStyle(
            name: 'Asim',
            subtitle: 'ok jani',
            image: 'assets/images/asim.jpg',
          ),
          CustomStatusStyle(
            name: 'Usman',
            subtitle: 'thek hai',
            image: 'assets/images/usman.jpg',
          ),
          CustomStatusStyle(
            name: 'Arbaz',
            subtitle: 'ok bro',
            image: 'assets/images/arbaz.jpg',
          ),
          CustomStatusStyle(
            name: 'Naveed',
            subtitle: 'chalty hain',
            image: 'assets/images/naveed.jpg',
          ),
          CustomStatusStyle(
            name: 'Areesh',
            subtitle: 'bethty hain',
          ),
          CustomStatusStyle(
            name: 'Awais',
            subtitle: 'krty hain kuch',
            image: 'assets/images/awais.jpg',
          ),
          CustomStatusStyle(
            name: 'Faish SMIT',
            subtitle: 'ok',
          ),
          CustomStatusStyle(
            name: 'Hamza',
            subtitle: 'best hai',
            image: 'assets/images/hamza.jpg',
          ),
          CustomStatusStyle(
            name: 'Saim',
            subtitle: 'hmm',
            image: 'assets/images/saim.jpg',
          ),
          CustomStatusStyle(
            name: 'Imran',
            subtitle: 'sahi',
            image: 'assets/images/imran.jpg',
          ),
          CustomStatusStyle(
            name: 'Kashif',
            subtitle: 'chalain',
            image: 'assets/images/kashif.jpg',
          ),
          CustomStatusStyle(
            name: 'Faizan',
            subtitle: 'aajaaa',
            image: 'assets/images/faizan.jpg',
          ),
        ],
      ),
    );
  }
}
