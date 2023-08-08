import 'package:flutter/material.dart';
import 'package:wra_app/Screens/Login/index.dart';
import 'package:wra_app/Screens/Home/index.dart';
import 'package:wra_app/SwipeAnimation/index.dart';

class Routes {
  Routes() {
    runApp(new MaterialApp(
      title: "Wholesome Recreational Activities App",
      debugShowCheckedModeBanner: false,
      home: new CardDemo(),
    ));
  }
}
