import 'package:flutter/material.dart';
import 'package:sabko_bazaar/constants.dart';

class ChangeLanguageScreen extends StatefulWidget {
  static String routeName = "/change_language_screen";
  @override
  _ChangeCountryPageState createState() => _ChangeCountryPageState();
}

class _ChangeCountryPageState extends State<ChangeLanguageScreen> {
  List<String> languages = [
    'English',
    'नेपाली',
  ];

  String currentLanguage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          'Settings',
          style: TextStyle(color: kSecondaryColor),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(
                  'Language A / क',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
              ),
              Flexible(
                child: ListView(
                  children: languages
                      .map((l) => ListTile(
                            onTap: () {
                              setState(() {
                                currentLanguage = l;
                              });
                            },
                            title: Text(
                              l,
                              style: TextStyle(fontSize: 14),
                            ),
                            trailing: l == currentLanguage
                                ? Icon(
                                    Icons.check_circle,
                                    color: kPrimaryColor,
                                    size: 16,
                                  )
                                : SizedBox(),
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
