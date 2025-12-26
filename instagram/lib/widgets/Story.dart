import 'package:flutter/material.dart';

Widget StoryContainer({
  required String profilePicture,
  bool isPlus = false,
  required String profileName,
}) {
  return SizedBox(
    width: 70,
    child: Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.pink, width: 2.0),
            borderRadius: BorderRadius.circular(50),
            image: DecorationImage(
              image: NetworkImage(profilePicture),
              fit: BoxFit.cover,
            ),
          ),
          child: isPlus
              ? const Icon(Icons.add, color: Colors.white, size: 20)
              : null,
        ),
        SizedBox(height: 2),
        Center(
          child: Text(
            profileName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 1,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  );
}
