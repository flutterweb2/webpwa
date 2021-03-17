import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
          children: [
            Center(
        child: Column(
          children: [
            Container(
              //height: 500,
              width: 1300,
              color: Colors.pink,
              child: Text(
                'Contact Page One',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
             //height: 500,
              width: 1300,
              color: Colors.blue,
              child: Text(
                'Otro contenedor Mapas',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              height: 250,
              width: 1300,
              color: Colors.brown,
              child: Text(
                'Otro contenedor Localizacion',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
          ],
    );
  }
}
