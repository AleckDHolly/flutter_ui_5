import 'package:flutter/material.dart';
import 'package:flutter_ui_8/components/shorts_image.dart';
import 'package:flutter_ui_8/components/shorts_video.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class BottomSheetView extends StatefulWidget {
  BottomSheetView({
    super.key,
    required this.image,
    required this.name,
  });

  String image;
  String name;

  @override
  State<BottomSheetView> createState() => _BottomSheetViewState();
}

class _BottomSheetViewState extends State<BottomSheetView> {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: _pageController,
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: [
            ShortImage(
              image: "images/3.jpg",
              personImage: widget.image,
              personName: widget.name,
            ),
            ShortVideo(
              video: "videos/blub.mp4",
              personImage: widget.image,
              personName: widget.name,
            ),
            ShortImage(
              image: "images/6.jpg",
              personImage: widget.image,
              personName: widget.name,
            ),
            ShortVideo(
              video: "videos/galaxy.mp4",
              personImage: widget.image,
              personName: widget.name,
            ),
            ShortImage(
              image: "images/10.jpg",
              personImage: widget.image,
              personName: widget.name,
            ),
            ShortVideo(
              video: "videos/smoke.mp4",
              personImage: widget.image,
              personName: widget.name,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Align(
            alignment: Alignment.topCenter,
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 6,
              effect: JumpingDotEffect(
                dotColor: Colors.white,
                dotHeight: 2,
                dotWidth: 50,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
