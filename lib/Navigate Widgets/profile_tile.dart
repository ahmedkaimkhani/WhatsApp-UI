import 'package:flutter/material.dart';

class CustomProfileTile extends StatelessWidget {
  final String subTitle;
  final String title;
  final String? texT;
  final IconData iconL;
  final IconData? iconR;
  const CustomProfileTile(
      {super.key,
      required this.subTitle,
      required this.title,
      required this.iconL,
      this.iconR,
      this.texT});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconL),
      subtitle: Text(subTitle),
      title: Column(
        children: [
          Text(title),
          Text(texT ?? ''),
        ],
      ),
      trailing: Icon(iconR),
    );
  }
}
