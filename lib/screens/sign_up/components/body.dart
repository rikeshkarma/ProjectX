import 'package:flutter/material.dart';
import 'package:sabko_bazaar/components/social_card.dart';
import 'package:sabko_bazaar/constants.dart';
import 'package:sabko_bazaar/screens/sign_up/components/sign_up_form.dart';
import 'package:sabko_bazaar/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  height: SizeConfig.screenHeight * 0.02), //2% of total height
              Text(
                "Register Account",
                style: headingStyle,
              ),
              Text(
                "Complete your details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.07),
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.07),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/facebook-2.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Text(
                "By continuing you confirm that you agree \nwith our Terms and Condition",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
