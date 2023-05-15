import 'package:eventually_vendor/screens/login.dart';
import 'package:eventually_vendor/screens/onboard.dart';
import 'package:eventually_vendor/screens/otp_verification.dart';
import 'package:eventually_vendor/screens/signup.dart';
import 'package:eventually_vendor/widget/textfield.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: ThemeData(
        // colorScheme: ColorScheme(
        //   primary: Color(0xFFCB585A),
        //   onPrimary: Colors.white,
        //   secondary: Color(0xFF555555),
        //   onSecondary: Colors.black,
        //   surface: Colors.white,
        //   onSurface: Colors.black,
        //   background: Color(0xFFFAFAFA),
        //   onBackground: Colors.black,
        //   brightness: Brightness.light,
        //   error:  Color(0xFFCB585A),
        //   onError: Colors.white,
        // ),

        // ),
        initialRoute: '/signup',
        routes: {
          '/onboard': (context) => onboard(),
          '/login': (context) => login(),
          '/signup': (context) => signup(),
          '/otpverification': (context) => otp_verification(),
        });
  }
}
