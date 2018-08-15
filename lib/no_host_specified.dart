// Scenario C: Invalid argument(s): No host specified in URI file:///www.bla

import 'package:flutter/material.dart';

class NoHostSpecified extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'is_this_unused',
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        // TODO: make crash more apparent
        body: new Image.network('www.google.de/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png'),
        appBar: new AppBar(
          title: new Text("no_host_specified demo"),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.menu), onPressed: null),
          ],
        ),
      ),
    );
  }
}
