import 'package:flutter/material.dart';
import 'package:sabko_bazaar/screens/home_screen/bottom_nav_bar_items/my_account/components/settings/components/body.dart';

class SettingsScreen extends StatelessWidget {
  static String routeName = "/settings_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
