// Scenario 1: Material widget ancestor required by TextField widgets not found.

import 'package:flutter/material.dart';

class NoMaterialWidgetFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      // TODO: how to go back?
      title: 'no_material_widget_found demo',
      debugShowCheckedModeBanner: false,
      home: new ExampleWidget(),
    );
  }
}

/// Opens an [AlertDialog] showing what the user typed.
class ExampleWidget extends StatefulWidget {
  ExampleWidget({Key key}) : super(key: key);

  @override
  _ExampleWidgetState createState() => new _ExampleWidgetState();
}

/// State for [ExampleWidget] widgets.
class _ExampleWidgetState extends State<ExampleWidget> {
  final TextEditingController _controller = new TextEditingController();

@override
Widget build(BuildContext context) {
  return new Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      new Padding(
        padding: new EdgeInsets.all(50.0),
        child: new TextField(
          controller: _controller,
          decoration: new InputDecoration(
            hintText: 'Type something',
          ),
        ),
      ),
    ],
  );
}
}

// need a more realistic scenario, although this one is instructive
// in that [we could point to documentation about building layouts]

// "I am new to Flutter and I was trying do execute the example here.
// I just want to use the TextField widget to get some user input."

// code from original post

// /// State for [ExampleWidget] widgets.
// class _ExampleWidgetState extends State<ExampleWidget> {
//   final TextEditingController _controller = new TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return new Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         new TextField(
//           controller: _controller,
//           decoration: new InputDecoration(
//             hintText: 'Type something',
//           ),
//         ),
//         new RaisedButton(
//           onPressed: () {
//             showDialog(
//               context: context,
//               child: new AlertDialog(
//                 title: new Text('What you typed'),
//                 content: new Text(_controller.text),
//               ),
//             );
//           },
//           child: new Text('DONE'),
//         ),
//       ],
//     );
//   }
// }
