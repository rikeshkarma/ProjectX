import 'package:flutter/material.dart';
import 'package:sabko_bazaar/screens/home_screen/bottom_nav_bar_items/my_account/components/body.dart';

class MyAccount extends StatelessWidget {
  static String routeName = "/my_account";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
