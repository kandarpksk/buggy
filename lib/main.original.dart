import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Scaffold( // example fix
            body: new TextField(
              controller: _controller,
              decoration: new InputDecoration(
                hintText: 'Type something',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
