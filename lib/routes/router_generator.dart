import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walk/routes/routes.dart';
import 'package:walk/ui/about_page.dart';
import 'package:walk/ui/contact_page.dart';
import 'package:walk/ui/home_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return MaterialPageRoute(builder: (_) => HomePage());
        break;
      case routeAbout:
        return MaterialPageRoute(builder: (_) => AboutPage());
        break;
      case routeContacts:
        return MaterialPageRoute(builder: (_) => ContactPage());
        break;
    }
  }
}
