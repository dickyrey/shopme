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
          Expanded(
            child: Text(
              title,
              style: kTitle18BoldStyle,
              textAlign: TextAlign.left,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          // SizedBox(width: 12.0),
          Text("Lihat semua", style: kTitle13LightStyle)
        ],
      ),
    );
  }
}
