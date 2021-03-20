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
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => showMenuOptions(),
            );
          },
        ),
        title: Text('Flutter Web 2'),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.merge_type),
            onPressed: () => print('hi on icon action'),
          ),
        ],
      ),
      backgroundColor: Colors.yellow,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Visibility(
            visible: _isVisible,
            child: NavigationBar(),
          ),
          Expanded(child: widget.child),
          //barraMenu(),
        ],
      ),
    );
  }
  
}
