import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Card Design',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 400.0,
      color: Colors.white,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                color: Colors.pink[100]),
          ),

          Positioned(
            top: 300,
            left: 0.0,
            child: CustomPaint(
              painter: CustomContainerShapeBorder(
                height: 100.0,
                width: 362.0,
                radius: 50.0,
              ),
            ),
          ),
          // This Holds the Widgets Inside the the custom Container;
          // Positioned(
          //   bottom: 10.0,
          //   child: Container(
          //     height: 80.0,
          //     width: 260.0,
          //     color: Colors.grey.withOpacity(0.6),
          //     child: null,
          //   ),
          // ),
        ],
      ),
    );
  }
}

/// The {CustomContainerShapeBorder} should be reactibe with different sizes,
/// If it isn't then chamge the offset values.
class CustomContainerShapeBorder extends CustomPainter {
  final double height;
  final double width;
  final Color fillColor;
  final double radius;

  CustomContainerShapeBorder({
    this.height: 400.0,
    this.width: 300.0,
    this.fillColor: Colors.white,
    this.radius: 50.0,
  });
  @override
  void paint(Canvas canvas, Size size) {
    Path path = new Path();
    path.moveTo(0.0, -radius);
    path.lineTo(0.0, -(height - radius));
    path.conicTo(0.0, -height, radius, -height, 1);
    path.lineTo(width - radius, -height);
    path.conicTo(width, -height, width, -(height + radius), 1);
    path.lineTo(width, -(height - radius));
    path.lineTo(width, -radius);

    path.conicTo(width, 0.0, width - radius, 0.0, 1);
    path.lineTo(radius, 0.0);
    path.conicTo(0.0, 0.0, 0.0, -radius, 1);
    path.close();
    canvas.drawPath(path, Paint()..color = fillColor);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
