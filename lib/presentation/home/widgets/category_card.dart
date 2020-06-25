import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopme/infrastructure/models/category_model.dart';
import 'package:shopme/theme/colors.dart';
import 'package:shopme/theme/style.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  CategoryCard({this.category});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      margin: EdgeInsets.only(left: 18.0),
      padding: EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: kGreyAccent,
      ),
      child: Column(
        children: <Widget>[
          SvgPicture.asset(category.icon),
          // SizedBox(height: 10.0),
          Spacer(),
          Text(
            category.title,
            textAlign: TextAlign.center,
            style: kTitle13BoldStyle,
          )
        ],
      ),
    );
  }
}
