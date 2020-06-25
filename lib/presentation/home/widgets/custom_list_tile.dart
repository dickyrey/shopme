import 'package:flutter/material.dart';
import 'package:shopme/theme/style.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  CustomListTile({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(title, style: kTitle18BoldStyle),
          Text("Lihat semua", style: kTitle13LightStyle)
        ],
      ),
    );
  }
}
