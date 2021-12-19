import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Sheet',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: BottomSheet(),
    );
  }
}

class BottomSheet extends StatelessWidget {
  PanelController panelController = PanelController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SlidingUpPanelExample"),
        ),
        body: Stack(
          children: <Widget>[
            Center(
              child: Text("This is the Widget behind the sliding panel"),
            ),
            SlidingUpPanel(
              controller: panelController,
              minHeight: 50,
              maxHeight: 300,
              backdropColor: Colors.transparent,
              backdropOpacity: 0.0,
              parallaxEnabled: true,
              // header: Icon(Icons.ac_unit),
              // footer: Icon(Icons.ac_unit),
              panelBuilder: (controller) => PanelWidget(
                controller: controller,
                panelController: panelController,
              ),
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              snapPoint: .5,
              backdropEnabled: false,
              renderPanelSheet: true,
              panelSnapping: true,
              // panel: Center(
              //   child: Text("This is the sliding Widget"),
              // ),

              collapsed: GestureDetector(
                onTap: () {
                  panelController.open();
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Center(
                      child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 5,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              )),
                        ),
                      ),
                      Text('Swipe Up'),
                    ],
                  )),
                ),
              ),
            )
          ],
        ));
  }
}

class PanelWidget extends StatefulWidget {
  final ScrollController? controller;
  PanelController? panelController = PanelController();

  PanelWidget({this.controller, this.panelController});

  @override
  State<PanelWidget> createState() => _PanelWidgetState();
}

class _PanelWidgetState extends State<PanelWidget> {
  void toggle() {
    setState(() {
      widget.panelController!.isPanelOpen
          ? widget.panelController!.close()
          : widget.panelController!.open();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Column(
          children: [
            GestureDetector(
                onTap: () {
                  if (widget.panelController!.isAttached)
                    widget.panelController!.close();
                  else {
                    print('error');
                  }
                },
                child: Icon(Icons.arrow_circle_down)),
            Center(
              child: Text("This is the sliding Widget"),
            ),
          ],
        ));
  }
}
