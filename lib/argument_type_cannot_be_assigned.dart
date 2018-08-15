// Scenario A: The argument type 'CachedNetworkImage' can't be assigned to the parameter type 'ImageProvider'.

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ArgumentTypeCannotBeAssigned extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'argument_type_cannot_be_assigned demo',
      debugShowCheckedModeBanner: false,
      home: new ExampleWidget(),
    );
  }
}

class ExampleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Test',
      debugShowCheckedModeBanner: false,
      home: new Container(
        width:80.0,
        height: 80.0,
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          image: new DecorationImage(
            // the alternatives below work
            // image: new NetworkImage('http://kandarp.xyz/assets/headshot-kandarp.jpg'),
            image: new CachedNetworkImageProvider('http://kandarp.xyz/assets/headshot-kandarp.jpg')
            // the line below does NOT work
            // image: new CachedNetworkImage(imageUrl: 'http://kandarp.xyz/assets/headshot-kandarp.jpg')
          ),
        ),
      ),
    );
  }
}
