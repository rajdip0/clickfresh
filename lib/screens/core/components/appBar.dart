import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:page_transition/page_transition.dart';

class MyAppBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  MyAppBar({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "Flutter Ecommerce Design",
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
      leading: IconButton(
          icon: Icon(MaterialCommunityIcons.getIconData("menu"),
              color: Colors.black),
          onPressed: () => _scaffoldKey.currentState.openDrawer()),
      actions: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.fade,
                child: Search(),
              ),
            );
          },
          child: Icon(
            MaterialCommunityIcons.magnify,
           
            color: Colors.black,
          ),
        ),
        IconButton(
          icon: Icon(
            MaterialCommunityIcons.cart_outline,
          ),
          color: Colors.black,
          onPressed: () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.fade,
                child: ShoppingCart(true),
              ),
            );
          },
        ),
      ],
      backgroundColor: Colors.white,
    );
  }
}
