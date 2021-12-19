import 'package:flutter/material.dart';

void main() {
  runApp(Button());
}

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Container(
      child: Row(
        children: [
          TextButton(
              onPressed: () {},
              child: Text('demo'),
              style: ButtonStyle(
                  // minimumSize: MaterialStateProperty.all(Size(150, 100)),
                  // maximumSize: MaterialStateProperty.all(const Size(150, 100)),
                  shadowColor: MaterialStateProperty.all(Colors.amber),
                  fixedSize: MaterialStateProperty.all(const Size(100, 100)),
                  elevation: MaterialStateProperty.all(50),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.amberAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(color: Colors.amber))))
              //     TextButton.styleFrom(
              //   primary: Colors.green,
              //   backgroundColor: Colors.amber,
              //   fixedSize: Size.fromRadius(100),
              //   shadowColor: Colors.black,

              //   // // maximumSize: Size.fromHeight(200),
              // ),
              ),
          ElevatedButton(
              onPressed: () {},
              child: Text('demo'),
              style: ButtonStyle(
                  // minimumSize: MaterialStateProperty.all(Size(150, 100)),
                  // maximumSize: MaterialStateProperty.all(const Size(150, 100)),
                  fixedSize: MaterialStateProperty.all(const Size(100, 100)),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.amberAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(color: Colors.amber))))),
          Material(
            elevation: 100,
            child: ButtonTheme(
              height: 100,
              minWidth: 100,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: MaterialButton(
                color: Colors.amberAccent,
                onPressed: () {},
                child: Text('demo'),
              ),
            ),
          )
        ],
      ),
    ))));
  }
}
