import 'package:flutter/material.dart';

import 'no_material_widget_found.dart';
import 'argument_type_cannot_be_assigned.dart';
import 'dynamic_not_a_subtype.dart';
import 'no_host_specified.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        new MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: new ThemeData(
            primaryColor: Colors.green,
            // primarySwatch: Colors.red,
          ),
          home: new MyHomePage(title: 'Flutter Error Messages Demo'),
        ),
      ],
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            makeDemoEntry(
                context, "1. No Material widget found", NoMaterialWidgetFound(),
                Colors.white),
            makeDemoEntry(
                context, "2. No host specified", NoHostSpecified(), Colors.white),
            // TODO: make a separator
            makeDemoEntry(
                context, "A. Argument type can't be assigned **",
                ArgumentTypeCannotBeAssigned()),
            makeDemoEntry(
                context, "B. dynamic not a subtype *", DynamicNotSubtype()),
          ],
        ),
      ),
    );
  }

  Widget makeDemoEntry(BuildContext context, String title, Widget nextScreen, [Color buttonColor = Colors.grey]) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // Icon(Icons.donut_large),
        FlatButton(
          color: buttonColor,
          padding: EdgeInsets.all(15.0),
          child: Text(title,
            // overflow: TextOverflow.fade,
            style: const TextStyle(fontSize: 18.0),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => nextScreen),
            );
          },
        ),
      ],
    );
  }
}
