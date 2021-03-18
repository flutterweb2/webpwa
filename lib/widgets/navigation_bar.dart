import 'package:flutter/material.dart';
import 'package:walk/routes/routes.dart';
import 'package:walk/widgets/navigation_item.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width > size.height ? size.height : size.width;

    if (width > 600) {
      return menuContainer(context);
    } else {
      return menuContainerPhone(context);
    }
    //return menuContainer(context);
  }

  Container menuContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0, right: 10),
      alignment: Alignment.centerLeft,
      // width: MediaQuery.of(context).size.width,
      // height: 50,
      width: 150,
      height: MediaQuery.of(context).size.height * 0.5,
      color: Colors.purple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          NavigationItem(
            selected: index == 0,
            title: 'Home',
            routeName: routeHome,
            onHighlight: onHighlight,
          ),
          NavigationItem(
            selected: index == 1,
            title: 'About',
            routeName: routeAbout,
            onHighlight: onHighlight,
          ),
          NavigationItem(
            selected: index == 2,
            title: 'Contact',
            routeName: routeContacts,
            onHighlight: onHighlight,
          ),
          // IconButton(icon: Icon(Icons.menu), onPressed: () => {
          //   barraMenu(),
          // }),
        ],
      ),
    );
  }

  

  Container menuContainerPhone(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0, right: 10),
      alignment: Alignment.centerLeft,
      // width: MediaQuery.of(context).size.width,
      // height: 50,
      width: 150,
      height: MediaQuery.of(context).size.height * 0.5,
      color: Colors.purple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          IconButton(
          icon: new Icon(Icons.more_vert), iconSize: 8,
          tooltip: 'Home',                 
          onPressed: () {   
            setState(() {
               
              //selected[index] = !selected.elementAt(index);
            });
                       
                     
          },
          ),
          NavigationItem(
            selected: index == 0,
            title: 'Home',
            routeName: routeHome,
            onHighlight: onHighlight,
          ),
          NavigationItem(
            selected: index == 1,
            title: 'About',
            routeName: routeAbout,
            onHighlight: onHighlight,
          ),
          NavigationItem(
            selected: index == 2,
            title: 'Contact',
            routeName: routeContacts,
            onHighlight: onHighlight,
          ),
          // IconButton(icon: Icon(Icons.menu), onPressed: () => {
          //   barraMenu(),
          // }),
        ],
      ),
    );
  }

  void onHighlight(String route) {
    switch (route) {
      case routeHome:
        changeHighlight(0);
        break;
      case routeAbout:
        changeHighlight(1);
        break;
      case routeContacts:
        changeHighlight(2);
        break;
    }
  }

  void changeHighlight(int newIndex) {
    setState(() {
      index = newIndex;
    });
  }
}
