import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


Future<List> getData() async {

      final _authority = "http://192.168.1.40:3000";
      final _path = "/products";
      final _params = { "q" : "dart" };
      final url =  Uri.https(_authority, _path, _params);    

      var response = await http.get(url);
      if (response.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(response.body);
        print('Listado de Productos 2021: $jsonResponse');
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
  }
