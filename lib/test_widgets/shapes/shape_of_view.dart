import 'package:flutter/material.dart';
import 'package:shape_of_view/shape_of_view.dart';

void main() {
  runApp(ShapeOfYou());
}

class ShapeOfYou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        height: 150,
        width: double.infinity,
        color: Colors.green,
        child: ShapeOfView(
          shape: ArcShape(
              direction: ArcDirection.Outside,
              height: 60,
              position: ArcPosition.Bottom),
          child: Container(
            color: Colors.amber,
            height: 300,
            width: double.infinity,
          ),
        ),
      ),
    ));
  }
}
