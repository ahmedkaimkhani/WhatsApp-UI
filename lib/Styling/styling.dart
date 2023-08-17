import 'package:flutter/material.dart';

class CustomColor {
  static const colorRecentStatus = Colors.teal;
  static const colorViewedStatus = Colors.grey;
}

class Styling {
  static const font_18 = TextStyle(fontSize: 18);
  static const font_13 = TextStyle(fontSize: 13);

  static const font_14 = TextStyle(fontSize: 14);
  static const font_12 = TextStyle(fontSize: 12);
}

class IconStyle {
  static const seenIcon = Icon(
    Icons.done_all,
    color: Colors.blue,
    size: 18,
  );
  static const unSeenIcon = Icon(
    Icons.done_all,
    color: Colors.grey,
    size: 18,
  );
}
