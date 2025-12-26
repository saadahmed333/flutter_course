import 'package:flutter/material.dart';

Widget Post({
  required String ownerPicture,
  required String ownerName,
  required List<Map> posts,
}) {
  return Column(
    children: [
      Column(
        children: [
          SizedBox(height: 10),
          ListTile(
            contentPadding: EdgeInsets.all(0),
            title: Text(ownerName, style: TextStyle(color: Colors.white)),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(ownerPicture),
              radius: 20,
            ),
            trailing: IconButton(
              icon: Icon(Icons.more_vert, color: Colors.white),
              onPressed: () {},
            ),
          ),
          SizedBox(height: 8),
          SizedBox(
            height: 300,
            child: PageView(
              children:
                  posts
                      ?.map(
                        (item) =>
                            Image.network(item['url'] ?? '', fit: BoxFit.cover),
                      )
                      .toList() ??
                  [],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 0, right: 0),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.favorite_border, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.comment, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.bookmark, color: Colors.white),
                  onPressed: () {},
                ),
                const Spacer(),
                IconButton(
                  icon: Icon(Icons.bookmark_add_outlined, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}
