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
    return Container(
      width: double.infinity,
      color: Colors.red,
      child: Row(
        children: [
          Icon(iconL),
          Column(
            children: [
              Text(title),
              Text(subTitle),
            ],
          )
        ],
      ),
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

// ListTile(
//   leading: Icon(
//     iconL,
//     size: 18,
//     color: Colors.grey,
//   ),
//   title: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       Text(
//         title,
//         style: TextStyle(fontSize: 12, color: Colors.grey),
//       ),
//       Icon(
//         iconR,
//         size: 18,
//         color: Colors.teal,
//       ),
//     ],
//   ),
//   subtitle: Padding(
//     padding: const EdgeInsets.only(top: 5),
//     child: Text(subTitle),
//   ),
// ),
