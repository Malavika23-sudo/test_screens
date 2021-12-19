import 'package:flutter/material.dart';

void main() {
  runApp(OverlapingWidget());
}

class OverlapingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          child: Stack(
            children: <Widget>[
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
              ),
              Positioned(
                left: 30,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 100,
                    color: Colors.red,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}

class StackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: EdgeInsets.all(8.0),
          width: double.infinity,
          color: Colors.black,
          alignment: FractionalOffset.center,
          child: Stack(
            children: <Widget>[
              Icon(Icons.monetization_on, size: 36.0, color: Colors.green),
              Positioned(
                left: 20.0,
                child:
                    Icon(Icons.monetization_on, size: 36.0, color: Colors.red),
              ),
              Positioned(
                left: 40.0,
                child: Icon(Icons.monetization_on,
                    size: 36.0, color: Colors.amber),
              )
            ],
          ),
        ),
      ),
    );
  }
}
