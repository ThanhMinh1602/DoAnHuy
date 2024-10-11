import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:galaxy_web3/app/constants/app_color.dart';
import 'package:galaxy_web3/app/core/utils/font_weight.dart';
import 'package:galaxy_web3/app/core/utils/spaces.dart';
import 'package:galaxy_web3/gen/assets.gen.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:video_player/video_player.dart';

class CustomVideoPlayer extends StatefulWidget {
  const CustomVideoPlayer({super.key});

  @override
  State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://cdn.pixabay.com/video/2019/04/06/22634-328940142_large.mp4',
    )..initialize().then((_) {
        // Video initialized, notify UI
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _controller.value.isInitialized
          ? _buildVideoPlayer()
          : const Center(child: CircularProgressIndicator()),
    );
  }

  Center _buildVideoPlayer() {
    return Center(
      child: AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: Stack(
          children: [
            VideoPlayer(_controller),
            Center(child: _buildControlButtons()),
            _buildBottomControlBar(),
          ],
        ),
      ),
    );
  }

  // Control buttons in the center of the video
  Widget _buildControlButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: _onPreviousPressed,
          icon: SvgPicture.asset(Assets.icons.backVideo),
        ),
        Stack(
          children: [
            const CircleAvatar(
              radius: 35.0,
              backgroundColor: AppColor.backgroundColor,
            ),
            Container(
              width: 70.0,
              height: 70.0,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: GradientBoxBorder(
                  width: 8.0,
                  gradient: AppColor.buildGradient(),
                ),
                shape: BoxShape.circle,
                gradient: AppColor.buildGradient(opacity: 0.6),
              ),
              child: GestureDetector(
                onTap: _onPlayPausePressed,
                child: SvgPicture.asset(_controller.value.isPlaying
                    ? Assets.icons.pauseCircleIcon
                    : Assets.icons.playCircleIcon),
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: _onNextPressed,
          icon: SvgPicture.asset(Assets.icons.nextVideo),
        ),
      ],
    );
  }

  // Bottom control bar with progress indicator and time
  Widget _buildBottomControlBar() {
    return Positioned(
      bottom: 0,
      left: 12.0,
      right: 12.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ValueListenableBuilder(
            valueListenable: _controller,
            builder: (context, VideoPlayerValue value, child) {
              return Text(
                '${_formatDuration(value.position)} / ${_formatDuration(value.duration)}',
                style: const TextStyle(
                    fontSize: 10.0,
                    fontWeight: medium,
                    color: AppColor.whiteColor),
              );
            },
          ),
          spaceW8,
          Expanded(
            child: VideoProgressIndicator(
              _controller,
              allowScrubbing: true,
              colors: const VideoProgressColors(
                playedColor: AppColor.blue700,
                bufferedColor: Colors.grey,
                backgroundColor: Colors.grey,
              ),
            ),
          ),
          spaceW8,
          SvgPicture.asset(Assets.icons.zoomFullVideo),
        ],
      ),
    );
  }

  // Format duration display
  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '${duration.inHours > 0 ? '${twoDigits(duration.inHours)}:' : ''}$minutes:$seconds';
  }

  // Control actions
  void _onPlayPausePressed() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
      } else {
        _controller.play();
      }
    });
  }

  void _onPreviousPressed() {
    // Implement logic for "Previous" button if needed
  }

  void _onNextPressed() {
    // Implement logic for "Next" button if needed
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CustomVideoPlayer(),
    );
  }
}
