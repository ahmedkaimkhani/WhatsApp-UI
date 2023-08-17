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
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        ListTile(
          leading: Icon(
            iconL,
            size: 18,
            color: Colors.grey,
          ),
          title: Text(
            title,
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(subTitle),
          ),
          trailing: Icon(
            iconR,
            size: 18,
            color: Colors.teal,
          ),
        )
      ],
    );
  }
}


// Column(
      //   children: [
      //     Row(
      //       children: [
      //         Icon(iconL),
      //         Column(
      //           children: [
      //             Text(
      //               subTitle,
      //               style: TextStyle(fontSize: 12, color: Colors.grey),
      //             ),
      //             Text(
      //               title,
      //               style: TextStyle(fontSize: 14, color: Colors.white),
      //             ),
      //             Icon(iconR),
      //           ],
      //         )
      //       ],
      //     )
      //   ],
      // ),
