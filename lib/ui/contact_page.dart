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
              height: 200,
              width: 200,
              color: Colors.pink,
              child: Text(
                'Contact Page One',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
              child: Text(
                'Otro contenedor Mapas',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.brown,
              child: Text(
                'Otro contenedor Mapas',
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
