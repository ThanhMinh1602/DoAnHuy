import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:galaxy_web3/app/constants/app_color.dart';
import 'package:galaxy_web3/app/constants/app_style.dart';
import 'package:galaxy_web3/app/core/utils/font_weight.dart';
import 'package:galaxy_web3/app/core/utils/spaces.dart';
import 'package:galaxy_web3/app/core/widgets/circle_gradient_blur.dart';
import 'package:galaxy_web3/app/core/widgets/text/gradient_text.dart';
import 'package:galaxy_web3/gen/assets.gen.dart';
import 'package:galaxy_web3/modules/loadingpage/cubit/loading_page_cubit.dart';
import 'package:galaxy_web3/modules/loadingpage/cubit/loading_page_state.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:video_player/video_player.dart';

class VideoTutorialsWidget extends StatefulWidget {
  const VideoTutorialsWidget({super.key});

  @override
  State<VideoTutorialsWidget> createState() => _VideoTutorialsWidgetState();
}

class _VideoTutorialsWidgetState extends State<VideoTutorialsWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://cdn.pixabay.com/video/2022/02/17/108013-678971340_medium.mp4',
    )..initialize().then((_) {
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
    return Container(
      padding: const EdgeInsets.only(top: 48.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          const Positioned(bottom: 0, child: CircleGradientBlur()),
          Column(
            children: [
              GradientText(
                text: "Galaxy\nVideo Tutorials",
                style: AppStyle.textHeader,
                gradient: AppColor.buildGradient(),
              ),
              spaceH24,
              _buildVideoPlayer(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildVideoPlayer() {
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

  Widget _buildControlButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: context.read<LoadingPageCubit>().previous,
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
                onTap: () {
                  final cubit = context.read<LoadingPageCubit>();
                  if (cubit.state.isPlaying) {
                    cubit.pause();
                    _controller.pause();
                  } else {
                    cubit.play();
                    _controller.play();
                  }
                },
                child: SvgPicture.asset(
                    context.watch<LoadingPageCubit>().state.isPlaying
                        ? Assets.icons.pauseCircleIcon
                        : Assets.icons.playCircleIcon),
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: context.read<LoadingPageCubit>().next,
          icon: SvgPicture.asset(Assets.icons.nextVideo),
        ),
      ],
    );
  }

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
                  color: AppColor.whiteColor,
                ),
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

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '${duration.inHours > 0 ? '${twoDigits(duration.inHours)}:' : ''}$minutes:$seconds';
  }
}
