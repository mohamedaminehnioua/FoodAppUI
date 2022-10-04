import 'package:flutter/material.dart';
import 'package:food_app/Constants/constants.dart';

GestureDetector createAccountText(BuildContext context, Color textColor,
    {bool isbold = false}) {
  return GestureDetector(
    child: Text(
      'Create account',
      style: TextStyle(
          color: textColor,
          fontFamily: interFont,
          fontWeight: isbold ? FontWeight.w700 : FontWeight.normal),
    ),
    onTap: () {
      Navigator.pushReplacementNamed(context, '/signin');
    },
  );
}

Padding loginButtonPage(context) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: SizedBox(
      width: 350.0,
      height: 60.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: darkColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          side: const BorderSide(
            width: 1.0,
            color: lightColor,
          ),
        ),
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/login/form');
        },
        child: const Text(
          'Login',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontFamily: inriaSerifFont,
            fontSize: 30,
          ),
        ),
      ),
    ),
  );
}

Padding bigText() {
  return const Padding(
    padding: EdgeInsets.only(right: 50, left: 20, bottom: 40),
    child: Text(
      'The customer is very important, the customer will be followed by the customer.',
      style: TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontFamily: inriaSerifFont,
        fontSize: 30,
      ),
    ),
  );
}

ShaderMask fadedImage() {
  return ShaderMask(
    shaderCallback: (rect) {
      return const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.black, Colors.transparent],
      ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
    },
    blendMode: BlendMode.dstIn,
    child: Image.asset(
      'assets/images/loginImage.png',
      height: 400,
      fit: BoxFit.contain,
    ),
  );
}

Padding questionAccountText() {
  return const Padding(
    padding: EdgeInsets.all(8.0),
    child: Text(
      'Do not have an account ?',
      style: TextStyle(
        color: lightColor,
        fontFamily: interFont,
      ),
    ),
  );
}
