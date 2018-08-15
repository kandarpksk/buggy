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
    // this is not how one writes code,
    // but it's easier for to demo errors
    var c = new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // TODO: how can this be fixed differently
        // + formatting within the stack trace
        // toggle implementation details?
        new Padding(
          padding: new EdgeInsets.all(50.0),
          child: new TextField(
            controller: _controller,
            decoration: new InputDecoration(
              hintText: 'Type something',
            ),
          ),
        ),
        new RaisedButton(
          onPressed: () {
            showDialog(
              context: context,
              child: new AlertDialog(
                title: new Text(_controller.text == '' ?
                  'It seems you didn\'t type anything  :(' :
                  'What you typed'),
                content: new Text(_controller.text),
              ),
            );
          },
          child: new Text('DONE'),
        ),
      ],
    );
    return c;
    // this is the fix
    // return new Scaffold(body: c);
  }
}

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
