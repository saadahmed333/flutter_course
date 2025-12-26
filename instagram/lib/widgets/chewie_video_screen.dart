import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class ReelVideoItem extends StatefulWidget {
  final String videoUrl;
  final bool isActive;

  const ReelVideoItem({
    super.key,
    required this.videoUrl,
    required this.isActive,
  });

  @override
  State<ReelVideoItem> createState() => _ReelVideoItemState();
}

class _ReelVideoItemState extends State<ReelVideoItem> {
  late VideoPlayerController _videoController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();

    _videoController =
        VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl))
          ..initialize().then((_) {
            setState(() {});
          });

    _chewieController = ChewieController(
      videoPlayerController: _videoController,
      autoPlay: false,
      looping: true,
      showControls: false, // reels style
    );
  }

  @override
  void didUpdateWidget(covariant ReelVideoItem oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.isActive) {
      _videoController.play();
    } else {
      _videoController.pause();
    }
  }

  @override
  void dispose() {
    _videoController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_videoController.value.isInitialized) {
      return const Center(child: CircularProgressIndicator());
    }

    return SizedBox.expand(
      child: Chewie(controller: _chewieController!),
    );
  }
}
