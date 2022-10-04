import 'package:flutter/material.dart';
import 'package:food_app/Login/login_form_ui_widgets.dart';
import 'package:food_app/Login/login_page_ui_widgets.dart';
import 'package:food_app/Constants/constants.dart';

class LogInForm extends StatelessWidget {
  const LogInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            topClipper('LOGIN', false, context),
            SizedBox(
                height: MediaQuery.of(context).size.height -
                    MediaQuery.of(context).size.height / 1.12),
            Column(
              children: [
                Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      labelTextField('Email'),
                      textFormField('foodapp@example.com', false,
                          (validator) {}, (validator) {}),
                      labelTextField('Password'),
                      textFormField('8 characters minimum', true,
                          (validator) {}, (validator) {}),
                    ],
                  ),
                ),
              ],
            ),
            loginButton(() {
              //TODO : Check User
              Navigator.pushReplacementNamed(context, '/home');
            }),
            loginWithGoogle(() {
              //TODO : Check User
              Navigator.pushReplacementNamed(context, '/home');
            }),
            questionAccountText(),
            createAccountText(context, darkColor, isbold: true),
          ],
        ),
      ),
    );
  }
}
