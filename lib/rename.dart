void main() {
  Map params = const {};
  Map stringParams = {};
  params.forEach((k,v)=>stringParams[k.toString()] = v.toString());
  Uri url = new Uri.https('<apiDomain>', '<apiPath>', stringParams);
  print(url);
//   var result = await http.post(
//     url,
//     body: {'apikey': '<apiKey>'}
//   );
//   print(result.body);
//   return json.decode(result.body);
}