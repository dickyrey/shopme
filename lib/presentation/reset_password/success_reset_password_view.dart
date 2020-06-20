import 'package:flutter/material.dart';
import 'package:shopme/theme/colors.dart';
import 'package:shopme/theme/style.dart';

class SuccessResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 18.0),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Text(
              "Sukses!",
              textAlign: TextAlign.center,
              style: kSuccessTitleStyle,
            ),
            SizedBox(height: 15.0),
            Text(
              "Password kamu telah berhasil dikirim\nke alamat e-mail kamu.",
              textAlign: TextAlign.center,
              style: kTitle15LightStyle,
            ),
            SizedBox(height: 15.0),
            Image.asset(
              "assets/images/success_reset_password.jpg",
              fit: BoxFit.cover,
            ),
            SizedBox(height: 35.0),
            SizedBox(
              height: 50.0,
              width: double.infinity,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/signup");
                },
                color: kRedColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Text(
                  "LOGIN",
                  textAlign: TextAlign.center,
                  style: kButtonStyle,
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
