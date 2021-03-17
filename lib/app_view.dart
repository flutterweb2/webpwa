import 'package:flutter/material.dart';
import 'package:walk/widgets/navigation_bar.dart';

class AppView extends StatefulWidget {
  final Widget child;

  const AppView({@required this.child});

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Column(
        children: [
          Column(
            children: [
              Row(
                children: [
                  NavigationBar(),
                ],
              ),
            ],
          ),
          Expanded(child: widget.child),
          Column(
            children: [
              Container(height: 200, width: 200, color: Colors.green),
            ],
          )
        ],
      ),
    );
  }
}
