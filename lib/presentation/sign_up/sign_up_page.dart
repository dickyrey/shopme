import 'package:flutter/material.dart';
import 'package:shopme/theme/colors.dart';
import 'package:shopme/theme/style.dart';
import 'package:shopme/presentation/sign_up/widgets/sign_up_text_form_field.dart';
import 'package:shopme/presentation/sign_up/widgets/sign_up_button.dart';
import 'package:shopme/presentation/sign_up/widgets/have_account_button.dart';

class SignUpPage extends StatelessWidget {
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
                Text("Daftar Akun Baru", style: kTitle25BoldStyle),
                SignUpTextFormField(
                  labelText: "Nama Lengkap",
                  hintText: "Masukkan nama lengkap",
                  obsecureText: false,
                ),
                SignUpTextFormField(
                  labelText: "Alamat e-mail",
                  hintText: "Masukkan alamat e-mail",
                  obsecureText: false,
                ),
                SignUpTextFormField(
                  labelText: "Password",
                  hintText: "Masukkan password",
                  obsecureText: true,
                ),
                SignUpTextFormField(
                  labelText: "Ketik ulang password",
                  hintText: "Masukkan password",
                  obsecureText: true,
                ),
                SizedBox(height: 15.0),
                SignUpButton(
                  title: "DAFTAR",
                  onPressed: () {},
                ),
                HaveAccountButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/signin");
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
