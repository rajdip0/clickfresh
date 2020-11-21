import 'package:clickfresh/Size/Size_config.dart';
import 'package:clickfresh/screens/Auth/loginScreen.dart';
import 'package:clickfresh/screens/core/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return GetMaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'ClickFresh',
                home: HomeView());
          },
        );
      },
    );
  }
}
