import 'package:flutter/material.dart';

Widget StatusTileView() {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: NetworkImage(
        "https://www.gravatar.com/avatar/00000000000000000000000000000000?d=mp&f=y",
      ),
      backgroundColor: Colors.grey[300],
    ),
    title: Text("Saad"),
    subtitle: Text("20:19"),
  );
}
