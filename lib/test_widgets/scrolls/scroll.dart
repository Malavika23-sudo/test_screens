import 'package:flutter/material.dart';

void main() {
  runApp(Scroll());
}

class Scroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: CustomScrollView(
              
      // shrinkWrap: true,
      // scrollDirection: Axis.horizontal,
      // reverse: true,
      primary: true,
      slivers: <Widget>[
        SliverAppBar(
          pinned: false,
          floating: true,
          backgroundColor: Colors.amber,
          elevation: 50,
          expandedHeight: 200,
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100))),
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              'Demo',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child: Text('List Item $index'),
              );
            },
          ),
        ),
      ],
    )));
  }
}


class ScrollAddedProperties extends StatelessWidget {
  List<Widget> _buildList(int count) {
    List<Widget> listItems = [];
    for (int i = 0; i < count; i++) {
      listItems.add(new Padding(
          padding: new EdgeInsets.all(16.0),
          child: new Text('Sliver Item ${i.toString()}',
              style: new TextStyle(fontSize: 22.0))));
    }
    return listItems;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: CustomScrollView(
      // shrinkWrap: true,
      // scrollDirection: Axis.horizontal,
      // reverse: true,
      primary: true,
      slivers: <Widget>[
        SliverAppBar(
          pinned: false,
          floating: true,
          backgroundColor: Colors.amber,
          elevation: 50,
          expandedHeight: 200,
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100))),
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              'Demo',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SliverGrid(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return Container(
              color: Colors.amber,
              alignment: Alignment.center,
              child: Text('grid item $index'),
            );
          }, childCount: 5),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 1.0,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            mainAxisExtent: 50,
          ),
        ),
        // SliverGrid(
        //   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        //     maxCrossAxisExtent: 200.0,
        //     mainAxisSpacing: 10.0,
        //     crossAxisSpacing: 10.0,
        //     childAspectRatio: 4.0,
        //   ),
        //   delegate: SliverChildBuilderDelegate(
        //     (BuildContext context, int index) {
        //       return Container(
        //         alignment: Alignment.center,
        //         color: Colors.teal[100 * (index % 9)],
        //         child: Text('grid item $index'),
        //       );
        //     },
        //     childCount: 20,
        //   ),
        // ),
        SliverList(delegate: SliverChildListDelegate(_buildList(20)))
      ],
    )));
  }
}



