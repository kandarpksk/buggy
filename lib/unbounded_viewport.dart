// Scenario 2: https://stackoverflow.com/questions/50252569

import 'package:flutter/material.dart';

class UnboundedViewport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.deepPurpleAccent,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[new GridView.count(crossAxisCount: 4,
          children: new List.generate(3*4, (index) {
            return new Center(
              // child: new CellWidget()
            );
          }),
        )]
      )
    );
  }

//  @override
//  Widget build(BuildContext context) {
//    return new Material(
//      color: Colors.deepPurpleAccent,
//      child: new Align(
//        child: new GridView(
//          children: new List.generate(3 * 4, (index) {
//            return new Center(/*child: new CellWidget()*/);
//          }),
//        )
//      )
//    );
//  }
}
