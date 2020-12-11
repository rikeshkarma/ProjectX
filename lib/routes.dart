import 'package:flutter/widgets.dart';
import 'package:sabko_bazaar/screens/categories/categories_list_page.dart';
import 'package:sabko_bazaar/screens/complete_profile/complete_profile_screen.dart';
import 'package:sabko_bazaar/screens/forgot_password/forgot_password_screen.dart';
import 'package:sabko_bazaar/screens/home_screen/bottom_nav_bar_items/home/home.dart';
import 'package:sabko_bazaar/screens/home_screen/bottom_nav_bar_items/my_account/components/faq_screen.dart';
import 'package:sabko_bazaar/screens/home_screen/bottom_nav_bar_items/my_account/components/payment_screen.dart';
import 'package:sabko_bazaar/screens/home_screen/bottom_nav_bar_items/my_account/components/tracking_screen.dart';
import 'package:sabko_bazaar/screens/login_success/login_success.dart';
import 'package:sabko_bazaar/screens/otp/otp_screen.dart';
import 'package:sabko_bazaar/screens/product_details/product_details_screen.dart';
import 'package:sabko_bazaar/screens/sign_in/sign_in_screen.dart';
import 'package:sabko_bazaar/screens/sign_up/sign_up_screen.dart';
import 'package:sabko_bazaar/screens/splash/splash_screen.dart';

import 'screens/home_screen/bottom_nav_bar_items/cart/cart_screen.dart';
import 'screens/home_screen/bottom_nav_bar_items/messenger/messenger.dart';
import 'screens/home_screen/bottom_nav_bar_items/my_account/components/settings/components/change_language_screen.dart';
import 'screens/home_screen/bottom_nav_bar_items/my_account/components/settings/components/change_password_screen.dart';
import 'screens/home_screen/bottom_nav_bar_items/my_account/components/settings/components/legal_about_screen.dart';
import 'screens/home_screen/bottom_nav_bar_items/my_account/components/settings/components/notification_settings_screen.dart';
import 'screens/home_screen/bottom_nav_bar_items/my_account/components/settings/settings.dart';
import 'screens/home_screen/bottom_nav_bar_items/my_account/my_account.dart';
import 'screens/home_screen/home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ProductDetailsScreen.routeName: (context) => ProductDetailsScreen(),
  Home.routeName: (context) => Home(),
  Messenger.routeName: (context) => Messenger(),
  Cart.routeName: (context) => Cart(),
  MyAccount.routeName: (context) => MyAccount(),
  SettingsScreen.routeName: (context) => SettingsScreen(),
  ChangeLanguageScreen.routeName: (context) => ChangeLanguageScreen(),
  NotificationSettingsScreen.routeName: (context) =>
      NotificationSettingsScreen(),
  LegalAboutScreen.routeName: (context) => LegalAboutScreen(),
  ChangePasswordScreen.routeName: (context) => ChangePasswordScreen(),
  FaqScreen.routeName: (context) => FaqScreen(),
  TrackingScreen.routeName: (context) => TrackingScreen(),
  PaymentScreen.routeName: (context) => PaymentScreen(),
  CategoryListScreen.routeName: (context) => CategoryListScreen(),
};
