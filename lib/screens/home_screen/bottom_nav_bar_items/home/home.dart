import 'package:flutter/material.dart';
import 'package:sabko_bazaar/screens/home_screen/bottom_nav_bar_items/home/components/body.dart';

class Home extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
