import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.whatsapp_outlined),
          title: const Text('WhatsApp'),
          actions: [
            const Icon(Icons.search_outlined),
            const SizedBox(width: 10,),
            const Icon(Icons.camera_alt_outlined),
            const SizedBox(width: 10,),
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
        ),
      ),
    );
  }
}
