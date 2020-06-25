import 'package:flutter/material.dart';
import 'package:shopme/infrastructure/models/store_model.dart';
import 'package:shopme/theme/style.dart';

class OfficialStoreCard extends StatelessWidget {
  final Store store;
  OfficialStoreCard({this.store});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.0,
      // color: Colors.redAccent,
      margin: EdgeInsets.only(left: 18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleAvatar(
            radius: 45.0,
            backgroundImage: AssetImage(store.logo),
          ),
          Expanded(
            // color: Colors.black12,
            // width: 100.0,
            child: Row(
              children: <Widget>[
                Container(
                  width: 100.0,
                  // color: Colors.black12,
                  child: Text(
                    store.name,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: kTitle13BoldStyle,
                  ),
                ),
                store.isVerified
                    ? Image.asset(
                        "assets/images/verified.png",
                        width: 15.0,
                        height: 15.0,
                      )
                    : Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
