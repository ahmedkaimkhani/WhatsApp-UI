import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/Widgets/chat_tile.dart';

class ChatScreen extends StatelessWidget {
  final String name;
  final String subtitle;
  final String time;
  final String image;
  const ChatScreen(
      {Key? key,
      required this.name,
      required this.subtitle,
      required this.time,
      required this.image})
      : super(key: key);

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
              ListView.builder(
                itemBuilder: (context, index) {
                  return ChatTile();
                },
                itemCount: 15,
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
