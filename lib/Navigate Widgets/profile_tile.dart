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
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                iconL,
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Text(
                      title,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ),
                  Text(subTitle),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      constraints: BoxConstraints(
                          maxWidth: double.infinity), // Constrain the width
                      child: OverflowBox(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          texT ?? '',
                          style:
                              const TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Icon(
              iconR,
              color: Colors.teal,
            ),
          ],
        ),
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
