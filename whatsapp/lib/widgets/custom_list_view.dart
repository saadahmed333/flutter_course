import 'package:flutter/material.dart';

Widget CustomListView() {
  return ListTile(
    title: Text("WhatsApp"),
    subtitle: Text("New messages"),
    leading: CircleAvatar(
      backgroundColor: Colors.grey[300],
      backgroundImage: NetworkImage(
        "https://www.gravatar.com/avatar/00000000000000000000000000000000?d=mp&f=y",
      ),
    ),
    trailing: Column(
      children: [
        Text("2:09 PM"),
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: Colors.green,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 2),
          ),
          child: Center(
            child: Text("2", style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    ),
  );
}
