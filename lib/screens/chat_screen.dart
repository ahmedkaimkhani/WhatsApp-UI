import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/Navigate%20Screens/settings.dart';
import 'package:flutter_whatsapp_ui/Widgets/chat_tile.dart';
import 'package:flutter_whatsapp_ui/screens/call_screen.dart';
import 'package:flutter_whatsapp_ui/screens/group_screen.dart';
import 'package:flutter_whatsapp_ui/screens/status_screen.dart';

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
                onSelected: (value) {
                  if (value == 5) {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SettingsScreen(),
                    ));
                  }
                },
                color: const Color(0xff1F2C34),
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
                // icon: Icon(Icons.chat_bubble_outline),
                child: Text('Chats'),
              ),
              Tab(
                // icon: Icon(Icons.group_outlined),
                child: Text('Groups'),
              ),
              Tab(
                // icon: Icon(Icons.add_a_photo_rounded),
                child: Text('Status'),
              ),
              Tab(
                // icon: Icon(Icons.call_outlined),
                child: Text('Calls'),
              ),
            ]),
          ),
          body: Stack(
            children: [
              TabBarView(
                children: [
                  // Chat Screen
                  SingleChildScrollView(
                    child: Column(
                      children: const [
                        CustomChatStyle(
                          name: 'Ahmed',
                          subtitle: 'set hai',
                          time: '12:00 AM',
                          image: null,
                          icon: 'unseen',
                        ),
                        CustomChatStyle(
                          name: 'Asim',
                          subtitle: 'ok jani',
                          time: '8:33 PM',
                          image: 'assets/images/asim.jpg',
                          icon: 'seen',
                        ),
                        CustomChatStyle(
                          name: 'Usman',
                          subtitle: 'thek hai',
                          time: '5:53 PM',
                          image: 'assets/images/usman.jpg',
                          icon: 'unseen',
                        ),
                        CustomChatStyle(
                          name: 'Arbaz',
                          subtitle: 'ok bro',
                          time: '10:14 PM',
                          image: 'assets/images/arbaz.jpg',
                          icon: 'unseen',
                        ),
                        CustomChatStyle(
                          name: 'Naveed',
                          subtitle: 'chalty hain',
                          time: '8:33 PM',
                          image: 'assets/images/naveed.jpg',
                        ),
                        CustomChatStyle(
                          name: 'Areesh',
                          subtitle: 'bethty hain',
                          time: '6:44 PM',
                          icon: 'seen',
                        ),
                        CustomChatStyle(
                          name: 'Awais',
                          subtitle: 'krty hain kuch',
                          time: '2:35 AM',
                          image: 'assets/images/awais.jpg',
                          icon: 'seen',
                        ),
                        CustomChatStyle(
                          name: 'Faish SMIT',
                          subtitle: 'ok',
                          time: '3:11 AM',
                          icon: 'seen',
                        ),
                        CustomChatStyle(
                          name: 'Hamza',
                          subtitle: 'best hai',
                          time: '6:47 PM',
                          image: 'assets/images/hamza.jpg',
                        ),
                        CustomChatStyle(
                          name: 'Saim',
                          subtitle: 'hmm',
                          time: '1:52 AM',
                          image: 'assets/images/saim.jpg',
                          icon: 'unseen',
                        ),
                        CustomChatStyle(
                          name: 'Imran',
                          subtitle: 'sahi',
                          time: '3:16 PM',
                          image: 'assets/images/imran.jpg',
                          icon: 'unseen',
                        ),
                        CustomChatStyle(
                          name: 'Kashif',
                          subtitle: 'chalain',
                          time: '7:46 PM',
                          image: 'assets/images/kashif.jpg',
                          icon: 'seen',
                        ),
                        CustomChatStyle(
                          name: 'Faizan',
                          subtitle: 'aajaaa',
                          time: '5:15 PM',
                          image: 'assets/images/faizan.jpg',
                        ),
                      ],
                    ),
                  ),
                  // 2: Group Screen
                  const GroupScreen(),
                  // 3: Status Screen
                  const StatusScreen(),
                  // 4: Call Screen
                  const CallScreen(),
                ],
              ),
              Positioned(
                  right: 20,
                  bottom: 50,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.deepOrange.shade400,
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
