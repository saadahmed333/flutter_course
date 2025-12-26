import 'package:flutter/material.dart';
import 'package:instagram/widgets/chewie_video_screen.dart';

class Reelsview extends StatefulWidget {
  const Reelsview({super.key});

  @override
  State<Reelsview> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<Reelsview> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<String> videos = [
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
    'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        itemCount: videos.length,
        itemBuilder: (context, index) {
          return ReelVideoItem(
            videoUrl: videos[index],
            isActive: index == _currentIndex,
          );
        },
      ),
    );
  }
}
