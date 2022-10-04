import 'package:flutter/material.dart';
import 'package:food_app/Home/home_page.dart';
import 'package:food_app/Login/login_form.dart';
import 'package:food_app/Login/login_page.dart';
import 'package:food_app/Signin/signin_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LogIn(),
      routes: {
        '/login': (context) => const LogIn(),
        '/login/form': (context) => const LogInForm(),
        '/signin': (context) => const SignIn(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
