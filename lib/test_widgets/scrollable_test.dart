import 'package:flutter/material.dart';

class ScrollableTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Scrollable(
      viewportBuilder: (BuildContext context, x) {
        return ListView(
          children: [
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
          ],
        );
      },
    ));
  }
}
