import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopme/theme/colors.dart';
import 'package:shopme/theme/style.dart';

class ProfileListTile extends StatelessWidget {
  final String icon;
  final Color color;
  final String title;

  const ProfileListTile({
    @required this.icon,
    @required this.color,
    @required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 40.0,
            height: 40.0,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: color.withOpacity(.2),
            ),
            child: SvgPicture.asset(
              icon,
              color: color,
            ),
          ),
          SizedBox(width: 12.0),
          Text(title, style: kTitle15BoldStyle),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              color: kBlackColor,
              size: 16.0,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
