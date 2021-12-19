import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DraggableBox(),
    );
  }
}

class DraggableBox extends StatefulWidget {
  @override
  State<DraggableBox> createState() => _DraggableBoxState();
}

class _DraggableBoxState extends State<DraggableBox> {
  int acceptData = 0;
  Color? color = Colors.yellow;
  Color? color_taget = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Draggable(
              data: 10,
              childWhenDragging: Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Text('dragged'),
              ),
              child: Container(
                height: 100,
                width: 100,
                color: color,
              ),
              feedback: Container(
                height: 100,
                width: 100,
                color: Colors.black,
              )),
          DragTarget<int>(
            builder: (BuildContext context, List<dynamic> accepted,
                List<dynamic> rejected) {
              return Container(
                height: 100,
                width: 100,
                color: color_taget,
                child: Text(
                  acceptData.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              );
            },
            onAccept: (int data) {
              setState(() {
                acceptData += data;
                color_taget = Colors.yellow;
                color = Colors.blue;
              });
            },
          )
        ],
      ),
    ));
  }
}

