import 'package:flutter/material.dart';
import 'package:shopme/theme/colors.dart';
import 'package:shopme/theme/style.dart';
import 'package:shopme/presentation/sign_in/widgets/sign_in_button.dart';
import 'package:shopme/presentation/sign_in/widgets/sign_in_text_form_field.dart';
import 'package:shopme/presentation/sign_in/widgets/no_account_button.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 25.0),
                Image.asset(
                  "assets/images/login.jpg",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 250.0,
                ),
                SizedBox(height: 15.0),
                Text("Selamat Datang", style: kTitle25BoldStyle),
                SizedBox(height: 15.0),
                SignInTextFormField(
                  labelText: "Alamat e-mail",
                  hintText: "Masukkan alamat-email",
                  obsecureText: false,
                ),
                SizedBox(height: 15.0),
                SignInTextFormField(
                  labelText: "Password",
                  hintText: "Masukkan password",
                  obsecureText: true,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/resetpassword");
                    },
                    child: Text(
                      "Lupa password?",
                      textAlign: TextAlign.right,
                      style: kTitle15LightStyle,
                    ),
                  ),
                ),
                SignInButton(
                  title: "LOGIN",
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/bottomnav");
                  },
                ),
                NoAccountButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/signup");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
