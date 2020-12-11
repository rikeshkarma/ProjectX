import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sabko_bazaar/screens/home_screen/bottom_nav_bar_items/home/home.dart';
import 'package:sabko_bazaar/screens/home_screen/bottom_nav_bar_items/messenger/messenger.dart';
import 'package:sabko_bazaar/screens/home_screen/bottom_nav_bar_items/cart/cart_screen.dart';
import 'package:sabko_bazaar/screens/home_screen/bottom_nav_bar_items/my_account/my_account.dart';

import '../../../constants.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    Messenger(),
    Cart(),
    MyAccount(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/home.svg"),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg"),
            label: 'Messenger',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/Cart Icon.svg"),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/User Icon.svg'),
            label: 'My Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kPrimaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
