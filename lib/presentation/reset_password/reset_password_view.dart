import 'package:flutter/material.dart';
import 'package:shopme/theme/colors.dart';
import 'package:shopme/theme/style.dart';

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: kBlackColor,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 15.0),
              Text(
                "Reset Password",
                textAlign: TextAlign.center,
                style: kTitle25BoldStyle,
              ),
              SizedBox(height: 15.0),
              Text(
                "Masukkan alamat e-mail\nyang Anda gunakan untuk masuk.",
                textAlign: TextAlign.center,
                style: kTitle15LightStyle,
              ),
              SizedBox(height: 15.0),
              Image.asset(
                "assets/images/forgot_password.png",
                fit: BoxFit.cover,
              ),
              TextFormField(
                cursorColor: kRedColor,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Alamat e-mail",
                  hintText: "Masukkan alamat e-mail",
                  labelStyle: kTitle15LightStyle,
                  hintStyle: kTitle15LightStyle,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: kGreyColor,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 35.0),
              SizedBox(
                height: 50.0,
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, "/successresetpassword");
                  },
                  color: kRedColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Text(
                    "Reset Password",
                    textAlign: TextAlign.center,
                    style: kButtonStyle,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
