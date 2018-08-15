// Scenario B: type '_InternalLinkedHashMap<dynamic, dynamic>' is not a subtype of type 'Map<String, String>'

import 'package:flutter/material.dart';

class DynamicNotSubtype extends StatelessWidget {
  final url = new Uri.https('apiDomain', 'apiPath', {});

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'dynamic_not_a_subtype demo',
      debugShowCheckedModeBanner: false,
      // home: new ExampleWidget(),
    );
  }
}

// void main() {
//   Map params = const {};
//   Map stringParams = {};
//   params.forEach((k,v)=>stringParams[k.toString()] = v.toString());
//   Uri url = new Uri.https('<apiDomain>', '<apiPath>', stringParams);
//   print(url);
//   // var result = await http.post(
//   //   url,
//   //   body: {'apikey': '<apiKey>'}
//   // );
//   // print(result.body);
//   // return json.decode(result.body);
// }
