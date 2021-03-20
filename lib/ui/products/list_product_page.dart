// import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:flutter_bootstrap/flutter_bootstrap.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;

class ListProductsPage extends StatefulWidget {
  @override
  _ListProductsPageState createState() => _ListProductsPageState();
}

class _ListProductsPageState extends State<ListProductsPage> {

  List data; 
    


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Lista productos',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

// class ListProductsPage extends StatefulWidget {
//   @override
//   _ListProductsPageState createState() => _ListProductsPageState();
// }

// class _ListProductsPageState extends State<ListProductsPage> {
//   List data;

//   // Future<List> getData() async {
//   //   final response = await http.get("http://192.168.1.56:3000/products");
//   //   return json.decode(response.body);
//   // }

//   Future<List> getData() async {
//     //var url = Uri.https('http://192.168.1.40:3000', '/products', {'q': '{http}'});
//     var url = Uri.https('http://192.168.1.40:3000/products', '', {'q': '{http}'});

//     var response = await http.get(url);
//     if (response.statusCode == 200) {
//       var jsonResponse = convert.jsonDecode(response.body);
//       print('Listado de Productos 2021: $jsonResponse');
//     } else {
//       print('Request failed with status: ${response.statusCode}.');
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     this.getData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List>(
//       future: getData(),
//       builder: (context, snapshot) {
//         if (snapshot.hasError) print(snapshot.error);
//         return snapshot.hasData
//             ? new ItemList(
//                 list: snapshot.data,
//               )
//             : new Center(
//                 child: new CircularProgressIndicator(),
//               );
//       },
//     );
//   }
// }

// class ItemList extends StatelessWidget {
//   final List list;
//   ItemList({this.list});

//   @override
//   Widget build(BuildContext context) {
//     return new ListView.builder(
//       itemCount: list == null ? 0 : list.length,
//       itemBuilder: (context, i) {
//         return BootstrapContainer(
//           fluid: true,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: BootstrapRow(
//                 height: 60, //es obligatorio poner una altura al container
//                 children: [
//                   BootstrapCol(
//                     sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
//                     child: Card(
//                       child: new ListTile(
//                         title: new Text(
//                           list[i]['name'].toString(),
//                           style: TextStyle(
//                               fontSize: 25.0, color: Colors.orangeAccent),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }


