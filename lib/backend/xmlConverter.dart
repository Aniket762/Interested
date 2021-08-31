import 'dart:convert';

import 'package:xml2json/xml2json.dart';
import 'package:http/http.dart' as http;

Future<List> xmlToJson(String category,
    {String baseUrl = "aniket.live"}) async {
  var client = http.Client();
  final myTransformer = Xml2Json();
  return await client
      .get(Uri.http(baseUrl, category + '/rssfeed.xml'))
      .then((response) {
    return response.body;
  }).then((bodyString) {
    myTransformer.parse(bodyString);
    var json = myTransformer.toGData();
    return jsonDecode(json)['rss']['channel']['item'];
  });
}
