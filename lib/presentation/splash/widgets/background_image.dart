import 'package:flutter/material.dart';
import 'package:shopme/theme/colors.dart';

class BackgroundImage extends StatelessWidget {
  final Widget child;
  BackgroundImage({@required this.child});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      // height: size.height - kBottomNavigationBarHeight,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/splash_image.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
          width: size.width,
          decoration: BoxDecoration(
            color: kRedColor.withOpacity(.6),
            // gradient: LinearGradient(colors: null)
          ),
          child: Center(
            child: child,
          )),
    );
  }
}
