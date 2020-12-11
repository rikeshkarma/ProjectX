import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sabko_bazaar/components/default_button.dart';
import 'package:sabko_bazaar/components/round_icon_button.dart';
import 'package:sabko_bazaar/constants.dart';
import 'package:sabko_bazaar/models/cart.dart';
import 'package:sabko_bazaar/screens/home_screen/bottom_nav_bar_items/cart/components/body.dart';

import '../../../../size_config.dart';
import '../../home_screen.dart';

class Cart extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Body(),
      bottomNavigationBar: CheckOurCard(),
    );
  }

  // AppBar buildAppBar(BuildContext context) {
  //   return AppBar(
  //     title: Column(
  //       children: [
  //         Text(
  //           "Your Cart",
  //           style: TextStyle(color: Colors.black),
  //         ),
  //         Text(
  //           "${demoCarts.length} Items",
  //           style: Theme.of(context).textTheme.caption,
  //         ),
  //       ],
  //     ),
  //   );
  // }
}

class CustomAppBar extends PreferredSize {
  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RoundIconButton(
                iconData: Icons.arrow_back,
                press: () =>
                    Navigator.pushNamed(context, HomeScreen.routeName)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Column(
                children: [
                  Text(
                    "Your Cart",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "${demoCarts.length} Items",
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CheckOurCard extends StatelessWidget {
  const CheckOurCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(15),
          horizontal: getProportionateScreenWidth(30)),
      //height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: getProportionateScreenWidth(40),
                  width: getProportionateScreenWidth(40),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset("assets/icons/receipt.svg"),
                ),
                Spacer(),
                Text("Add Voucher Code"),
                const SizedBox(width: 10),
                Icon(Icons.arrow_forward, size: 12, color: kTextColor),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Total:\n",
                    children: [
                      TextSpan(
                        text: "\R\s\.\ 328.5",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(190),
                  child: DefaultButton(
                    text: "Check Out",
                    press: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
