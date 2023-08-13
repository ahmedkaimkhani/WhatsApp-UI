import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/screens/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp UI',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff121B22),
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          color: Color(0xff1F2C34),
        )
      ),
      home:  const ChatScreen(),
    );
  }
}
