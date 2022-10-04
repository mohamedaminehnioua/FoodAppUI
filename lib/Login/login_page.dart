import 'package:flutter/material.dart';
import 'package:food_app/Login/login_page_ui_widgets.dart';
import 'package:food_app/Constants/constants.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            fadedImage(),
            bigText(),
            loginButtonPage(context),
            questionAccountText(),
            createAccountText(
                context, const Color.fromARGB(255, 255, 255, 255)),
          ],
        ),
      ),
    );
  }
}
