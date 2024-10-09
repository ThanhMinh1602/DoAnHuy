import 'dart:ui';

import 'package:flutter/material.dart';

class CircleGradientBlur extends StatelessWidget {
  const CircleGradientBlur({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      enabled: true,
      imageFilter: ImageFilter.blur(
        sigmaX: 80.0,
        sigmaY: 80.0,
        tileMode: TileMode.decal,
      ),
      child: Container(
        width: 220,
        height: 220,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.purpleAccent,
              Colors.blueAccent,
            ],
          ),
        ),
      ),
    );
  }
}
