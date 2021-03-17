import 'package:flutter/material.dart';
import 'package:walk/widgets/navigation_bar.dart';

class AppView extends StatefulWidget {
  final Widget child;

  const AppView({@required this.child});

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  bool _isVisible = true;
  bool switchValue = false;

  //function menu options
  void showMenuOptions() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.yellow,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavigationBar(),
          Expanded(child: widget.child),
          //barraMenu(),
        ],
      ),
    );
  }

  Visibility barraMenu() {
    return Visibility(
      visible: _isVisible,
      child: Container(
        margin: EdgeInsets.only(top: 0, right: 10),
        alignment: Alignment.centerLeft,
        color: Color(0xFF808080).withOpacity(0.5),
        height: 440,
        width: 70,
        child: Column(children: <Widget>[
          SizedBox(
            width: 10.0,
          ),
          new Switch(
            activeColor: Colors.black87,
            onChanged: (newValue) {
              setState(() {});
            },
            value: switchValue,
          ),
          SizedBox(width: 10.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
                child: Icon(Icons.directions_bike),
                elevation: 5,
                backgroundColor: Colors.greenAccent,
                onPressed: () {
                  // setState(() {
                  //   _darkMode = false;
                  //   changeMapMode();
                  // });
                }),
          ),
          SizedBox(width: 10.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
                child: Icon(Icons.location_searching),
                elevation: 5,
                backgroundColor: Colors.blueAccent,
                onPressed: () {
                  // getCurrentLocationCar();
                }),
          ),
          SizedBox(width: 10.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
                child: Icon(Icons.local_taxi),
                elevation: 5,
                backgroundColor: Colors.orangeAccent,
                onPressed: () {
                  //getCurrentLocation();
                }),
          ),
          SizedBox(width: 10.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
                child: Icon(
                  Icons.notification_important,
                  color: Colors.yellow,
                ),
                elevation: 5,
                backgroundColor: Colors.purple[300],
                onPressed: () {
                  //getCurrentLocation();
                }),
          ),
          SizedBox(width: 10.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
                child: Icon(
                  Icons.phone,
                  color: Colors.pinkAccent,
                ),
                elevation: 5,
                backgroundColor: Colors.white,
                onPressed: () => setState(() {
                      // _launched = _makePhoneCall('tel:$_phone');
                    })),
          ),
        ]),
      ),
    );
  }
}
