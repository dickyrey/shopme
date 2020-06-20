import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:shopme/infrastructure/models/on_boarding_model.dart';
import 'package:shopme/theme/colors.dart';
import 'package:shopme/theme/style.dart';
import 'package:shopme/presentation/on_boarding/widgets/onboarding_swiper.dart';
import 'package:shopme/presentation/on_boarding/widgets/onboarding_button.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: <Widget>[
            OnboardingSwiper(),
            SizedBox(height: 25.0),
            OnboardingButton(
              title: "DAFTAR SEKARANG",
              onPressed: () {
                Navigator.pushNamed(context, "/signin");
              },
            ),
          ],
        ),
      ),
    );
  }
}
