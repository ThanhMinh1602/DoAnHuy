import 'dart:ui'; // Thư viện cần thiết cho BackdropFilter
import 'package:flutter/material.dart';

class ContainerCustomPaint extends StatelessWidget {
  const ContainerCustomPaint({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: TrapezoidClipper(),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
            child: Container(
              width: screenWidth,
              height: 542,
              color: Colors.transparent, // Đảm bảo trong suốt
            ),
          ),
        ),
        ClipPath(
          clipper: TrapezoidClipper(),
          child: CustomPaint(
            size: Size(screenWidth, 542),
            painter: TrapezoidPainter(), // CustomPainter cho hình thang phía trên
          ),
        ),
      ],
    );
  }
}

// Custom Clipper để tạo hình thang
class TrapezoidClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.2);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class TrapezoidPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Tạo gradient cho hình thang
    final gradient = LinearGradient(
      colors: [
        Colors.white.withOpacity(0.05), // Màu bắt đầu
        Colors.white.withOpacity(0.02), // Màu kết thúc
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );

    // Tạo paint với gradient
    final paint = Paint()
      ..shader = gradient.createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    final path = Path();
    
    // Định nghĩa hình thang
    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.2);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.close();

    // Vẽ hình thang trên canvas với gradient
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
