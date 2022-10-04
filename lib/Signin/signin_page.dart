import 'package:flutter/material.dart';
import 'package:food_app/Login/login_form_ui_widgets.dart';
import 'package:food_app/Signin/signin_page_ui_widgets.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            topClipper('SIGN IN ', true, context),
            SizedBox(
                height: MediaQuery.of(context).size.height -
                    MediaQuery.of(context).size.height / 1.04),
            Column(
              children: [
                Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      labelTextField('Full name'),
                      textFormField(
                          'Nickname', false, (validator) {}, (validator) {}),
                      labelTextField('Email'),
                      textFormField('foodapp@example.com', false,
                          (validator) {}, (validator) {}),
                      labelTextField('Password'),
                      textFormField('8 characters minimum', true,
                          (validator) {}, (validator) {}),
                      labelTextField('Confirm password'),
                      textFormField('8 characters minimum', true,
                          (validator) {}, (validator) {}),
                    ],
                  ),
                ),
              ],
            ),
            signinButton(() {
              //TODO : Check User
              Navigator.pushReplacementNamed(context, '/home');
            }),
            signinWithGoogle(() async {
              //TODO : Check User
              Navigator.pushReplacementNamed(context, '/home');
            }),
          ],
        ),
      ),
    );
  }
}
