import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:shopme/infrastructure/local_data/carousel_listitem.dart';
import 'package:shopme/theme/colors.dart';

class CarouselWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180.0,
      color: Colors.amber,
      child: Swiper(
        itemCount: carouselList.length,
        autoplay: true,
        pagination: SwiperPagination(),
        itemBuilder: (context, index) {
          var carousel = carouselList[index];
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(carousel.image),
                fit: BoxFit.fill,
              ),
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    height: 30.0,
                    color: kBlackAccent.withOpacity(.5),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
