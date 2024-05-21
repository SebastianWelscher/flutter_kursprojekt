import 'package:flutter/material.dart';

class CustomClipperView extends StatelessWidget {
  const CustomClipperView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Stack(
              children: [
                ClipPath(
                  clipper: BlobPath(),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                    width: 300,
                    height: 300,
                  ),
                ),
                ClipPath(
                  clipper: RoundedRects(),
                  child: Container(
                    color: Colors.green,
                    width: 300,
                    height: 300,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/* ClipPath(
                  clipper: RoundedRects(),
                  child: Container(
                    color: Colors.green,
                    width: 300,
                    height: 300,
                  ),
                ), */

class BlobPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // width & height must be the same size
    double width = size.width;
    double height = size.height;

    double radius = width / 6;

    // Offsets for points
    Offset p0 = Offset.zero;
    Offset p1 = Offset(0, radius);
    Offset p2 = Offset(0, 2 * radius);
    Offset p3 = Offset(0, 3 * radius);
    Offset p4 = Offset(radius, 3 * radius);
    Offset p5 = Offset(2 * radius, 3 * radius);
    Offset p6 = Offset(3 * radius, 3 * radius);
    Offset p7 = Offset(3 * radius, 4 * radius);
    Offset p8 = Offset(3 * radius, 5 * radius);
    Offset p9 = Offset(3 * radius, height);
    Offset p10 = Offset(4 * radius, height);
    Offset p11 = Offset(5 * radius, height);
    Offset p12 = Offset(width, height);
    Offset p13 = Offset(width, 5 * radius);
    Offset p14 = Offset(width, 4 * radius);
    Offset p15 = Offset(width, 3 * radius);
    Offset p16 = Offset(5 * radius, 3 * radius);
    Offset p17 = Offset(4 * radius, 3 * radius);
    Offset p18 = Offset(3 * radius, 2 * radius);
    Offset p19 = Offset(3 * radius, radius);
    Offset p20 = Offset(3 * radius, 0);
    Offset p21 = Offset(2 * radius, 0);
    Offset p22 = Offset(radius, 0);

    Path path = Path()
      ..moveTo(p1.dx, p1.dy)
      ..lineTo(p2.dx, p2.dy)
      ..quadraticBezierTo(p3.dx, p3.dy, p4.dx, p4.dy)
      ..lineTo(p5.dx, p5.dy)
      ..quadraticBezierTo(p6.dx, p6.dy, p7.dx, p7.dy)
      ..lineTo(p8.dx, p8.dy)
      ..quadraticBezierTo(p9.dx, p9.dy, p10.dx, p10.dy)
      ..lineTo(p11.dx, p11.dy)
      ..quadraticBezierTo(p12.dx, p12.dy, p13.dx, p13.dy)
      ..lineTo(p14.dx, p14.dy)
      ..quadraticBezierTo(p15.dx, p15.dy, p16.dx, p16.dy)
      ..lineTo(p17.dx, p17.dy)
      ..quadraticBezierTo(p6.dx, p6.dy, p18.dx, p18.dy)
      ..lineTo(p19.dx, p19.dy)
      ..quadraticBezierTo(p20.dx, p20.dy, p21.dx, p21.dy)
      ..lineTo(p22.dx, p22.dy)
      ..quadraticBezierTo(p0.dx, p0.dy, p1.dx, p1.dy)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class RoundedRects extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // width & height must be the same size
    double width = size.width;
    double height = size.height;

    double radius = width / 12;

    // Offsets for points, Rectangle bottom left
    Offset p1 = Offset(0, 7 * radius);
    Offset p2 = Offset(0, 9 * radius);
    Offset p3 = Offset(0, 11 * radius);
    Offset p4 = Offset(0, height);
    Offset p5 = Offset(radius, height);
    Offset p6 = Offset(3 * radius, height);
    Offset p7 = Offset(5 * radius, height);
    Offset p8 = Offset(5 * radius, 10 * radius);
    Offset p9 = Offset(5 * radius, 8 * radius);
    Offset p10 = Offset(5 * radius, 7 * radius);
    Offset p11 = Offset(4 * radius, 7 * radius);
    Offset p12 = Offset(2 * radius, 7 * radius);

    // Offsets for points, Rectangle top right
    Offset p13 = Offset(7 * radius, 0);
    Offset p14 = Offset(7 * radius, 2 * radius);
    Offset p15 = Offset(7 * radius, 4 * radius);
    Offset p16 = Offset(7 * radius, 5 * radius);
    Offset p17 = Offset(8 * radius, 5 * radius);
    Offset p18 = Offset(10 * radius, 5 * radius);
    Offset p19 = Offset(width, 5 * radius);
    Offset p20 = Offset(width, 3 * radius);
    Offset p21 = Offset(width, radius);
    Offset p22 = Offset(width, 0);
    Offset p23 = Offset(11 * radius, 0);
    Offset p24 = Offset(9 * radius, 0);

    Path path = Path()
      ..moveTo(p2.dx, p2.dy)
      ..lineTo(p3.dx, p3.dy)
      ..quadraticBezierTo(p4.dx, p4.dy, p5.dx, p5.dy)
      ..lineTo(p6.dx, p6.dy)
      ..quadraticBezierTo(p7.dx, p7.dy, p8.dx, p8.dy)
      ..lineTo(p9.dx, p9.dy)
      ..quadraticBezierTo(p10.dx, p10.dy, p11.dx, p11.dy)
      ..lineTo(p12.dx, p12.dy)
      ..quadraticBezierTo(p1.dx, p1.dy, p2.dx, p2.dy)
      ..close()
      ..moveTo(p14.dx, p14.dy)
      ..lineTo(p15.dx, p15.dy)
      ..quadraticBezierTo(p16.dx, p16.dy, p17.dx, p17.dy)
      ..lineTo(p18.dx, p18.dy)
      ..quadraticBezierTo(p19.dx, p19.dy, p20.dx, p20.dy)
      ..lineTo(p21.dx, p21.dy)
      ..quadraticBezierTo(p22.dx, p22.dy, p23.dx, p23.dy)
      ..lineTo(p24.dx, p24.dy)
      ..quadraticBezierTo(p13.dx, p13.dy, p14.dx, p14.dy)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
