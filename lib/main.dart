import 'package:flutter/material.dart';
import 'package:navigation/pages/intro_page.dart';
import 'package:navigation/pages/login_page.dart';
import 'package:navigation/pages/sign_up_page.dart';

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
      home: IntroPage(),
      routes: {
        '/signuppage': (context) => SignUpPage(),
        '/intropage': (context) => IntroPage(),
        '/loginpage': (context) => LoginPage(),
      },
    );
  }       
}
