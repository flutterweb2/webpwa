import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

class InteractiveNavItemPhone extends MouseRegion {
  static final appContainer =
      html.window.document.querySelectorAll('flt-glass-pane')[0];

  InteractiveNavItemPhone(
      {Widget child, String text, String routeName, bool selected})
      : super(
          onHover: (PointerHoverEvent evt) {
            appContainer.style.cursor = 'pointer';
          },
          onExit: (PointerExitEvent evt) {
            appContainer.style.cursor = 'default';
          },
          child: IconButton(
          icon: new Icon(Icons.more_vert),
          tooltip: text,          
          onPressed: () {   
            (routeName) => routeName;           
          },
        ),
          // child: InteractiveTextPhone(
          //   text: text,
          //   routeName: routeName,
          //   selected: selected,
          // ),
        );
}

// class InteractiveTextPhone extends StatefulWidget {
//   final String text;
//   final String routeName;
//   final bool selected;

//   const InteractiveTextPhone(
//       {@required this.text, this.routeName, this.selected});

//   @override
//   InteractiveTextState createState() => InteractiveTextState();
// }

// class InteractiveTextState extends State<InteractiveTextPhone> {

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       icon: new Icon(Icons.more_vert),
//       tooltip: widget.text,
//       onPressed: () {},
//     );
//   }
// }
