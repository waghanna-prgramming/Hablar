import 'package:flutter/material.dart';
import 'package:hablar/screens/login_screen.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(this.colour, this.buttonText, this.pathName);

  late Color colour;
  late String buttonText;
  // late String pathName;
  // late Function navigateTo;
  // Future<Function> onPressed;
  late String pathName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, pathName);
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonText,
          ),
        ),
      ),
    );
  }
}
