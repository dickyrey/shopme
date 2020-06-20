import 'package:flutter/material.dart';
import 'package:shopme/theme/colors.dart';
import 'package:shopme/theme/style.dart';

class SignInTextFormField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool obsecureText;

  const SignInTextFormField(
      {Key key,
      @required this.labelText,
      @required this.hintText,
      @required this.obsecureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kRedColor,
      keyboardType: TextInputType.emailAddress,
      obscureText: obsecureText,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        labelStyle: kTitle15LightStyle,
        hintStyle: kTitle15LightStyle,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: kGreyColor,
            width: 1.0,
          ),
        ),
        suffixIcon: obsecureText == true
            ? IconButton(
                icon: Icon(Icons.visibility_off),
                onPressed: () {},
              )
            : null,
      ),
    );
  }
}
