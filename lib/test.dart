import 'dart:ui'; // Thư viện cần thiết cho BackdropFilter
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            // Background Image
            Image.network(
              'https://cdn.pixabay.com/photo/2023/04/20/12/22/globe-7939725_640.jpg', // Replace with your image URL
              fit: BoxFit.cover,
            ),
            // BackdropFilter with dispersion effect
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.black.withOpacity(0), // Ensure transparency
              ),
            ),
            // Trapezoid shape
            ContainerCustomPaint(
                screenWidth: MediaQuery.of(context).size.width),
          ],
        ),
      ),
    );
  }
}

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
    // Tạo gradient cho hình thang
    final gradient = LinearGradient(
      colors: [
        Colors.white.withOpacity(0.05), // Màu bắt đầu
        Colors.white.withOpacity(0.02), // Màu kết thúc
      ],
      begin: Alignment.topLeft, // Vị trí bắt đầu gradient
      end: Alignment.bottomRight, // Vị trí kết thúc gradient
    );

    // Tạo paint với gradient
    final paint = Paint()
      ..shader =
          gradient.createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    final path = Path();

    // Điểm bắt đầu (bottom left)
    path.moveTo(0, size.height);

    // Đường từ bottom left đến top left (cạnh vuông)
    path.lineTo(0, size.height * 0.2);

    // Đường từ top left đến top right (cạnh trên nghiêng)
    path.lineTo(size.width, 0);

    // Đường từ top right đến bottom right (cạnh vuông)
    path.lineTo(size.width, size.height);

    // Kết thúc và khép kín hình
    path.close();

    // Vẽ hình thang trên canvas với gradient
    canvas.drawPath(path, paint);

    // Tạo paint cho hiệu ứng blur
    final paintBlurEffect = Paint()
      ..color = Colors.transparent // Không màu để chỉ có hiệu ứng blur
      ..imageFilter = ImageFilter.blur(
        sigmaX: 500,
        sigmaY: 500,
      ); // Điều chỉnh độ mờ

    // Vẽ lại hình thang với hiệu ứng blur
    canvas.drawPath(path, paintBlurEffect);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
