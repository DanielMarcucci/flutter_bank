import 'package:transaction_bank_app/screens/home_screen.dart';
import 'package:transaction_bank_app/screens/login/login_screen.dart';
import 'package:transaction_bank_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Bank',
        home: SplashScreen(),
        theme: ThemeData(
            primaryColor: Color(0xFF007EFF),
            // primaryColor: Color(0xFF5F5FFF),
            highlightColor: Color(0xFFB7B7D2),
            colorScheme:
                ColorScheme.fromSwatch().copyWith(secondary: Color(0xFF030047)),
            textTheme: const TextTheme(
              headline1: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF030047)),
              headline2: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF007EFF)),
              headline3: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
              headline4: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w500,
                color: Color(0XFF030047),
              ),
              bodyText1: TextStyle(fontSize: 20, color: Color(0XFFB7B7D2)),
              bodyText2: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF007EFF),
              ),
              subtitle1: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                color: Color(0XFFB7B7D2),
              ),
            )));
  }
}
