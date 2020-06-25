import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopme/presentation/splash/widgets/background_image.dart';
import 'package:shopme/theme/colors.dart';
import 'package:shopme/theme/style.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  startTime() {
    Timer(Duration(seconds: 4), onNavigationPage);
  }

  Future onNavigationPage() {
    return Navigator.of(context).pushNamed("/onboarding");
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        child: Text(
          "BELKA",
          style: kProductStyle,
        ),
      ),
    );
  }
}
