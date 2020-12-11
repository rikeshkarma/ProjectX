import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sabko_bazaar/constants.dart';
import 'package:sabko_bazaar/screens/home_screen/bottom_nav_bar_items/my_account/components/settings/components/change_language_screen.dart';
import 'package:sabko_bazaar/screens/splash/splash_screen.dart';

import 'change_password_screen.dart';
import 'legal_about_screen.dart';
import 'notification_settings_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        title: Text(
          'Settings',
          style: TextStyle(color: kSecondaryColor),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        bottom: true,
        child: LayoutBuilder(
          builder: (builder, constraints) => SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'General',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                    ),
                    ListTile(
                      title: Text('Language A / का'),
                      leading: Image.asset('assets/icons/language.png'),
                      onTap: () => Navigator.pushNamed(
                          context, ChangeLanguageScreen.routeName),
                    ),
                    ListTile(
                      title: Text('Notifications'),
                      leading: SvgPicture.asset('assets/icons/Bell.svg'),
                      onTap: () => Navigator.pushNamed(
                          context, NotificationSettingsScreen.routeName),
                    ),
                    ListTile(
                      title: Text('Legal & About'),
                      leading: Image.asset('assets/icons/legal.png'),
                      onTap: () => Navigator.pushNamed(
                          context, LegalAboutScreen.routeName),
                    ),
                    ListTile(
                      title: Text('About Us'),
                      leading: Image.asset('assets/icons/about_us.png'),
                      onTap: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        'Account',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                    ),
                    ListTile(
                      title: Text('Change Password'),
                      leading: Image.asset('assets/icons/change_pass.png'),
                      onTap: () => Navigator.pushNamed(
                          context, ChangePasswordScreen.routeName),
                    ),
                    ListTile(
                      title: Text('Sign out'),
                      leading: Image.asset('assets/icons/sign_out.png'),
                      onTap: () =>
                          Navigator.pushNamed(context, SplashScreen.routeName),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
