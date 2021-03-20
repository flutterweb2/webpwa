import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:http/http.dart';

class DataBaseHelper {
  var status;
  var token;
  String serverUrlproducts = "http://192.168.1.40:3000/products";

  // //funciton getData
  // Future<List> getData() async{

  //   final prefs = await SharedPreferences.getInstance();
  //   final key = 'token';
  //   final value = prefs.get(key ) ?? 0;

  //   String myUrl = "$serverUrlproducts";
  //   http.Response response = await http.get(myUrl,
  //       headers: {
  //         'Accept':'application/json',
  //         'Authorization' : 'Bearer $value'
  //   });
  //   return json.decode(response.body);
  //  // print(response.body);
  // }

  //function for register products
  void addDataProducto(String _nameController, String _emailController,
      String _adrressController, String _phoneController, String _instagramController, String _twitterController) async {
    var url =
        Uri.http('http://192.168.1.40:3000', '/products', {'q': '{http}'});

    final response = await http.post(url, headers: {
      'Accept': 'application/json'
    }, body: {
      "name": "$_nameController",
      "email": "$_emailController",
      "adrress": "$_adrressController",
      "phone": "$_phoneController",
      "instagram": "$_instagramController",
      "twitter": "$_twitterController"
    });
    status = response.body.contains('error');

    var data = json.decode(response.body);

    if (response.statusCode == 200) {
      print("add");
    } else {
      throw "Can't delete post.";
    }
  }

  // //function for update or put
  // void editarProduct(String _id, String name, String price, String stock) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final key = 'token';
  //   final value = prefs.get(key ) ?? 0;

  //   String myUrl = "http://192.168.1.56:3000/product/$_id";
  //   http.put(myUrl,
  //       body: {
  //        "name":       "$name",
  //        "price":       "$price",
  //        "stock":      "$stock"
  //       }).then((response){
  //     print('Response status : ${response.statusCode}');
  //     print('Response body : ${response.body}');
  //   });
  // }

//   //function for delete
//   Future<void> removeRegister(String _id) async {

//   String myUrl = "http://192.168.1.56:3000/product/$_id";

//   Response res = await http.delete("$myUrl");

//   if (res.statusCode == 200) {
//     print("DELETED");
//   } else {
//     throw "Can't delete post.";
//   }
// }

  //function save

//function read
//  read() async {
//     final prefs = await SharedPreferences.getInstance();
//     final key = 'token';
//     final value = prefs.get(key ) ?? 0;
//     print('read : $value');
//   }
}
