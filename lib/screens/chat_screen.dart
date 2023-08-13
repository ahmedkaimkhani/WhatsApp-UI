import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/Widgets/chat_tile.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.whatsapp_outlined),
            title: const Text(
              'WhatsApp',
              textAlign: TextAlign.start,
            ),
            actions: [
              const Icon(Icons.search_outlined),
              const SizedBox(width: 10),
              const Icon(Icons.camera_alt_outlined),
              const SizedBox(width: 10),
              PopupMenuButton(
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 1,
                    child: Text('Auto Reply'),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child: Text('Message a number'),
                  ),
                  const PopupMenuItem(
                    value: 3,
                    child: Text('New Groups'),
                  ),
                  const PopupMenuItem(
                    value: 4,
                    child: Text('Linked devices'),
                  ),
                  const PopupMenuItem(
                    value: 5,
                    child: Text('Settings'),
                  ),
                ],
              )
            ],
            bottom: const TabBar(tabs: [
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Groups'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              ),
            ]),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: const [
                    ChatTile(
                      name: 'Ahmed',
                      subtitle: 'set hai',
                      time: '12:00 AM',
                      image: null,
                    ),
                    ChatTile(
                      name: 'Asim',
                      subtitle: 'ok jani',
                      time: '8:33 PM',
                      image: 'assets/images/asim.jpg',
                    ),
                    ChatTile(
                      name: 'Usman',
                      subtitle: 'thek hai',
                      time: '5:53 PM',
                      image: 'assets/images/usman.jpg',
                    ),
                    ChatTile(
                      name: 'Arbaz',
                      subtitle: 'ok bro',
                      time: '10:14 PM',
                      image: 'assets/images/arbaz.jpg',
                    ),
                    ChatTile(
                      name: 'Naveed',
                      subtitle: 'chalty hain',
                      time: '8:33 PM',
                      image: 'assets/images/naveed.jpg',
                    ),
                    ChatTile(
                      name: 'Areesh',
                      subtitle: 'bethty hain',
                      time: '6:44 PM',
                    ),
                    ChatTile(
                      name: 'Awais',
                      subtitle: 'krty hain kuch',
                      time: '2:35 AM',
                      image: 'assets/images/awais.jpg',
                    ),
                    ChatTile(
                      name: 'Faish SMIT',
                      subtitle: 'ok',
                      time: '3:11 AM',
                    ),
                    ChatTile(
                      name: 'Hamza',
                      subtitle: 'best hai',
                      time: '6:47 PM',
                      image: 'assets/images/hamza.jpg',
                    ),
                    ChatTile(
                      name: 'Saim',
                      subtitle: 'hmm',
                      time: '1:52 AM',
                      image: 'assets/images/saim.jpg',
                    ),
                    ChatTile(
                      name: 'Imran',
                      subtitle: 'sahi',
                      time: '3:16 PM',
                      image: 'assets/images/imran.jpg',
                    ),
                    ChatTile(
                      name: 'Kashif',
                      subtitle: 'chalain',
                      time: '7:46 PM',
                      image: 'assets/images/kashif.jpg',
                    ),
                    ChatTile(
                      name: 'Faizan',
                      subtitle: 'aajaaa',
                      time: '5:15 PM',
                      image: 'assets/images/faizan.jpg',
                    ),
                  ],
                ),
              ),
              Text('Groups'),
              Text('Status'),
              Text('Calls'),
            ],
          ),
        ),
      ),
    );
  }
}
