import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:shopme/infrastructure/models/on_boarding_model.dart';
import 'package:shopme/theme/style.dart';

class OnboardingSwiper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500.0,
      child: Swiper(
        itemCount: onBoardingList.length,
        scrollDirection: Axis.horizontal,
        pagination: SwiperPagination(),
        itemBuilder: (context, index) {
          var onBoarding = onBoardingList[index];
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  onBoarding.image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 250.0,
                ),
                SizedBox(height: 25.0),
                Text(
                  onBoarding.title,
                  textAlign: TextAlign.center,
                  style: kTitle25BoldStyle,
                ),
                SizedBox(height: 25.0),
                Text(
                  onBoarding.subtitle,
                  textAlign: TextAlign.center,
                  style: kTitle15LightStyle,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
