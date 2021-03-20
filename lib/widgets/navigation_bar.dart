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
      color: Color(0xFF808080).withOpacity(0.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            children: [
              SizedBox(width: 7,),
              Icon(Icons.home, size: 19, color: Colors.black,),
              SizedBox(width: 7,),
              NavigationItem(
                selected: index == 0,
                title: 'Home',
                routeName: routeHome,
                onHighlight: onHighlight,
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              SizedBox(width: 7,),
              Icon(Icons.build, size: 19, color: Colors.black,),
              SizedBox(width: 7,),
              NavigationItem(
                selected: index == 1,
                title: 'About',
                routeName: routeAbout,
                onHighlight: onHighlight,
              ),
            ],
          ),
           Divider(),
          Row(
            children: [
              SizedBox(width: 7,),
              Icon(Icons.contact_support, size: 19, color: Colors.black,),
              SizedBox(width: 7,),
              NavigationItem(
                selected: index == 2,
                title: 'Contact',
                routeName: routeContacts,
                onHighlight: onHighlight,
              ),
            ],
          ),
           Divider(),
           Row(
            children: [
              SizedBox(width: 7,),
              Icon(Icons.list, size: 19, color: Colors.black,),
              SizedBox(width: 7,),
             NavigationItem(
                selected: index == 3,
                title: 'Productos',
                routeName: routeListProducts,
                onHighlight: onHighlight,
              ),
            ],
          ),
           Divider(),
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
      width: 90,
      height: MediaQuery.of(context).size.height * 0.5,
      color: Color(0xFF808080).withOpacity(0.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [          
          Row(
            children: [
              SizedBox(width: 7,),
              Icon(Icons.home, size: 18, color: Colors.white,),
              SizedBox(width: 7,),
              NavigationItem(
                selected: index == 0,
                title: 'Home',              
                routeName: routeHome,
                onHighlight: onHighlight,
              ),              
            ],
          ),
          Row(
            children: [
              SizedBox(width: 7,),
              Icon(Icons.build, size: 18, color: Colors.white,),
              SizedBox(width: 7,),
              NavigationItem(
                selected: index == 1,
                title: 'About',
                routeName: routeAbout,
                onHighlight: onHighlight,
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 7,),
              Icon(Icons.contact_support, size: 18, color: Colors.white,),
              SizedBox(width: 7,),
              NavigationItem(
                selected: index == 2,
                title: 'Contact',
                routeName: routeContacts,
                onHighlight: onHighlight,
              ),
            ],
          ),
           Row(
            children: [
              SizedBox(width: 7,),
              Icon(Icons.list, size: 18, color: Colors.white,),
              SizedBox(width: 7,),
              NavigationItem(
                selected: index == 3,
                title: 'Productos',
                routeName: routeListProducts,
                onHighlight: onHighlight,
              ),
            ],
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
