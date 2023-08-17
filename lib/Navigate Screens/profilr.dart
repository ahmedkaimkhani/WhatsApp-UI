import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              height: 150,
              width: 150,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
              child: Image.asset(
                'assets/images/mine.jpg',
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
