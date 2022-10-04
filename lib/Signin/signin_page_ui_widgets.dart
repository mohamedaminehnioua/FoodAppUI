import 'package:flutter/material.dart';
import 'package:food_app/Constants/constants.dart';

Padding signinWithGoogle(onpressed) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
    child: SizedBox(
      width: 350,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(255, 255, 255, 255),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          side: const BorderSide(
            width: 1,
            color: darkColor,
          ),
        ),
        onPressed: onpressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/GoogleImage.png',
              height: 17,
              width: 17,
            ),
            const SizedBox(width: 9),
            const Text(
              'Sign in with Google',
              style: TextStyle(
                color: darkColor,
                fontSize: 14,
                fontFamily: interFont,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Padding signinButton(onpressed) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
    child: SizedBox(
      width: 350,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: darkColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        onPressed: onpressed,
        child: const Text(
          'SIGN IN',
          style: TextStyle(
              fontSize: 14, fontFamily: interFont, fontWeight: FontWeight.w700),
        ),
      ),
    ),
  );
}
