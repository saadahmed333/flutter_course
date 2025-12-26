import 'package:flutter/material.dart';
import 'package:instagram/utils/users.dart';
import 'package:instagram/widgets/Post.dart';
import 'package:instagram/widgets/Story.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryContainer(
                    profilePicture:
                        'https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
                    isPlus: true,
                    profileName: "Saad Ahmed",
                  ),
                  ...users.map(
                    (item) => StoryContainer(
                      profilePicture:
                          (item as Map<String, dynamic>)['profilePicture']
                              as String,
                      profileName:
                          (item as Map<String, dynamic>)['username'] as String,
                    ),
                  ),
                ],
              ),
            ),
            ...users.map(
              (item) => Post(
                ownerPicture: (item as Map<String, dynamic>)['profilePicture'] as String,
                ownerName: (item as Map<String, dynamic>)['username'] as String,
                posts: (item as dynamic)['posts'] as List<Map>,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
