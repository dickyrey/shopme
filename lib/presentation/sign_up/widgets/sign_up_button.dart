import 'package:flutter/material.dart';
import 'package:shopme/theme/style.dart';

class SignUpButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  SignUpButton({@required this.title, @required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 50.0,
        margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
        child: RaisedButton(
          onPressed: onPressed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: kButtonStyle,
          ),
        ),
      ),
    );
  }
}
