import 'package:flutter/material.dart';
import 'package:shopme/infrastructure/models/store_model.dart';
import 'package:shopme/theme/colors.dart';
import 'package:shopme/theme/style.dart';

class OfficialStoreCard extends StatelessWidget {
  final Store officialStore;
  OfficialStoreCard({this.officialStore});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              radius: 35.0,
              backgroundImage: AssetImage(officialStore.logo),
            ),
            SizedBox(width: 12.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(officialStore.name, style: kTitle18BoldStyle),
                      SizedBox(width: 12.0),
                      officialStore.isVerified
                          ? Image.asset(
                              "assets/images/verified.png",
                              width: 15.0,
                              height: 15.0,
                            )
                          : Container(),
                    ],
                  ),
                  SizedBox(height: 12.0),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: kBlackAccent,
                        size: 15.0,
                      ),
                      Text(officialStore.address, style: kTitle15LightStyle),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
