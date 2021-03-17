import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            color: Colors.pink,
            child: Text(
              'Contact Page',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            color: Colors.pink,
            child: Text(
              'Otro contenedor Mapas',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
