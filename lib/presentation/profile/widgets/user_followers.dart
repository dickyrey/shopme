import 'package:flutter/material.dart';
import 'package:shopme/theme/colors.dart';
import 'package:shopme/theme/style.dart';

class UserFollowers extends StatelessWidget {
  final String title;
  final String total;
  UserFollowers({this.title, this.total});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      height: 40.0,
      child: Column(
        children: <Widget>[
          Text(total, style: kTitle15BoldStyle.copyWith(color: kWhiteColor)),
          Spacer(),
          Text(title, style: kTitle13BoldStyle.copyWith(color: kGreyColor)),
        ],
      ),
    );
  }
}
