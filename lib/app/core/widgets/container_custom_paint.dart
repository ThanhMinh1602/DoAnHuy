import 'package:flutter/material.dart';

class ContainerCustomPaint extends StatelessWidget {
  const ContainerCustomPaint({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(screenWidth, 542),
      painter: TrapezoidPainter(),
    );
  }
}

class TrapezoidPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    final path = Path();

    // Điểm bắt đầu (top left)
    path.moveTo(0, size.height);

    // Đường từ bottom left đến top left (cạnh vuông)
    path.lineTo(0, size.height * 0.2);

    // Đường từ top left đến top right (cạnh trên nghiêng)
    path.lineTo(size.width, 0);

    // Đường từ top right đến bottom right (cạnh vuông)
    path.lineTo(size.width, size.height);

    // Kết thúc và khép kín hình
    path.close();

    // Vẽ hình thang trên canvas
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
