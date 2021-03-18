import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BootstrapContainer(
      fluid: true,
      // decoration: BoxDecoration(
      //   color: Colors.blue,
      // ),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: BootstrapRow(
            height: 60, //es obligatorio poner una altura al container
            children: [
               BootstrapCol(
                sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: myController,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        icon: Icon(Icons.person),
                      ),
                    )),
              ),
              BootstrapCol(
                sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: myController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        icon: Icon(Icons.email),
                      ),
                    )),
              ), 
              BootstrapCol(
                sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: myController,
                      decoration: InputDecoration(
                        labelText: 'Address',
                        icon: Icon(Icons.streetview),
                      ),
                    )),
              ),             
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: BootstrapRow(
            height: 60, //es obligatorio poner una altura al container
            children: [
               BootstrapCol(
                sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: myController,
                      decoration: InputDecoration(
                        labelText: 'Phone',
                        icon: Icon(Icons.phone),
                      ),
                    )),
              ),
              BootstrapCol(
                sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: myController,
                      decoration: InputDecoration(
                        labelText: 'Instagram',
                        icon: Icon(Icons.train),
                      ),
                    )),
              ), 
              BootstrapCol(
                sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: myController,
                      decoration: InputDecoration(
                        labelText: 'Twitter',
                        icon: Icon(Icons.table_view_rounded),
                      ),
                    )),
              ),             
            ],
          ),
        ),
      ],
    );
  }
}
