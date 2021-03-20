import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:walk/controllers/products_controller.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {

  DataBaseHelper databaseHelper = new DataBaseHelper();

  final TextEditingController _nameController = new TextEditingController();  
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _adrressController = new TextEditingController();
  final TextEditingController _phoneController = new TextEditingController();  
  final TextEditingController _instagramController = new TextEditingController();
  final TextEditingController _twitterController = new TextEditingController();


  final myController = TextEditingController();
  DateTime selectedDate;

  @override
  initState() {
    super.initState();
    selectedDate = DateTime.now();
  }

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
                  child: Text('Add Clientes'),
                ),
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
                      controller: _nameController,
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
                      controller: _emailController,
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
                      controller: _adrressController,
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
                      controller: _phoneController,
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
                      controller: _instagramController,
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
                      controller: _twitterController,
                      decoration: InputDecoration(
                        labelText: 'Twitter',
                        icon: Icon(Icons.table_view_rounded),
                      ),
                    )),
              ),
            ],
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: BootstrapRow(
        //     height: 60, //es obligatorio poner una altura al container
        //     children: [
        //       BootstrapCol(
        //         sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
        //         child: Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: CalendarDatePicker(
        //             firstDate: DateTime(1970),
        //             lastDate: DateTime(2021, 12, 12),
        //             initialDate: selectedDate,
        //             onDateChanged: (date) {
        //               setState(() {
        //                 selectedDate = date;
        //               });
        //             },
        //           ),
        //         ),
        //       ),
        //       //Text("Selected Date: $selectedDate"),
        //       BootstrapCol(
        //         sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
        //         child: Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: TextField(
        //               controller: myController,
        //               decoration: InputDecoration(
        //                 labelText: 'abc',
        //                 icon: Icon(Icons.train),
        //               ),
        //             )),
        //       ),
        //       BootstrapCol(
        //         sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
        //         child: Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: TextField(
        //               controller: myController,
        //               decoration: InputDecoration(
        //                 labelText: 'Contact',
        //                 icon: Icon(Icons.table_view_rounded),
        //               ),
        //             )),
        //       ),
        //     ],
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: BootstrapRow(
            height: 60, //es obligatorio poner una altura al container
            children: [
              BootstrapCol(
                sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      databaseHelper.addDataProducto(
                        _nameController.text.trim(), _emailController.text.trim(), _adrressController.text.trim(), _phoneController.text.trim(), _instagramController.text.trim(), _twitterController.text.trim(),
                        );
                    },
                    child: Text('Agregar'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
