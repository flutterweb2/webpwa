import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ListProductsPage extends StatefulWidget {
  @override
  _ListProductsPageState createState() => _ListProductsPageState();
}

class _ListProductsPageState extends State<ListProductsPage> {
  String title = "";

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Center(
          child: Text(
            title.toString(),
            style: TextStyle(
              fontSize: 50.0,
              color: Colors.black,
            ),
          ),
        ),
        FloatingActionButton(
          child: Icon(Icons.cloud_download),
          onPressed: () {
            fetchData();
          },
        )
      ],
    ));
  }

  fetchData() async {    
    //final res = await http.get(Uri.https('jsonplaceholder.typicode.com', 'albums/2'));
    final res = await http.get(Uri.https('jsonplaceholder.typicode.com', 'albums/2'));

    if (res.statusCode == 200) {
      var v = json.decode(res.body);
      setState(() {
        title = v['title'];
      });
    }
  }
}
