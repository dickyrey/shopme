import 'package:flutter/material.dart';
import 'package:shopme/presentation/routes/route_generator.dart';
import 'package:shopme/presentation/splash/splash_page.dart';
import 'package:shopme/theme/colors.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BELKA",
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      initialRoute: "/",
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: ThemeData(
        primaryColor: kRedColor,
        buttonColor: kRedColor,
      ),
    );
  }
}
