import 'package:flutter/material.dart';
import 'package:food_app/Constants/constants.dart';

Padding textFormField(String hintText, bool isObsucure, onsaved, valid) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
    child: TextFormField(
      decoration: textFormFieldStyle(hintText),
      obscureText: isObsucure,
      validator: valid,
      onSaved: onsaved,
    ),
  );
}

InputDecoration textFormFieldStyle(String hintText) {
  return InputDecoration(
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    hintText: hintText,
    hintStyle: TextStyle(fontSize: 15, color: darkColor.withOpacity(0.5)),
  );
}

Padding loginWithGoogle(onpressed) {
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
              'Login with Google',
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

Padding loginButton(onpressed) {
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
          'LOGIN',
          style: TextStyle(
              fontSize: 14, fontFamily: interFont, fontWeight: FontWeight.w700),
        ),
      ),
    ),
  );
}

Padding labelTextField(String text) {
  return Padding(
    padding: const EdgeInsets.only(left: 21, bottom: 5),
    child: Text(
      text,
      style: const TextStyle(
        fontSize: 14,
        fontFamily: interFont,
      ),
    ),
  );
}

Widget topClipper(String text, bool canPop, context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return Stack(
    children: [
      ClipPath(
        clipper: BottomClipper(),
        child: Container(
          height: 200,
          color: darkColor.withOpacity(1),
        ),
      ),
      canPop
          ? Padding(
              padding: EdgeInsets.only(
                  left: width - width / 1.03, top: height - height / 1.05),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            )
          : const SizedBox(),
      Padding(
        padding: EdgeInsets.only(
            left: width - width / 1.77, top: height - height / 1.27),
        child: Text(
          text,
          style: const TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 20,
              fontFamily: interFont,
              fontWeight: FontWeight.w700),
        ),
      )
    ],
  );
}

class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(
        size.width - size.width / 4, size.height, size.width, size.height - 40);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
