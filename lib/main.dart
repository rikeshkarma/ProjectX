import 'package:flutter/material.dart';
import 'package:sabko_bazaar/routes.dart';
import 'package:sabko_bazaar/screens/splash/splash_screen.dart';
import 'package:sabko_bazaar/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
