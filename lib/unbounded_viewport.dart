// Scenario 2: https://stackoverflow.com/questions/50252569

import 'package:flutter/material.dart';

class UnboundedViewport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.deepPurpleAccent,
//      // this is the fix
//      child: new Align(
//        child: new GridView.count(
//          children: [
//            const Text('He\'d have you all unravel at the'),
//            const Text('Heed not the rabble'),
//            const Text('Sound of screams but the'),
//            const Text('Who scream'),
//            const Text('Revolution is coming...'),
//            const Text('Revolution, they...'),
//          ],
//        ),
//      )

      // 
      child: new Column(
        children: [new GridView.count(
          crossAxisCount: 3,
          children: [
            const Text('He\'d have you all unravel at the'),
            const Text('Heed not the rabble'),
            const Text('Sound of screams but the'),
            const Text('Who scream'),
            const Text('Revolution is coming...'),
            const Text('Revolution, they...'),
          ]
        )],
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
