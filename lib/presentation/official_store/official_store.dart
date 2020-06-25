import 'package:flutter/material.dart';
import 'package:shopme/infrastructure/local_data/store_model.dart';
import 'package:shopme/presentation/official_store/widgets/official_store_card.dart';
import 'package:shopme/theme/colors.dart';
import 'package:shopme/theme/style.dart';

class OfficialStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kWhiteColor,
        title: Container(
          child: Row(
            children: <Widget>[
              Text("Official Store", style: kTitle18BoldStyle),
              SizedBox(width: 12.0),
              Image.asset(
                "assets/images/verified.png",
                width: 15.0,
                height: 15.0,
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: officialStoreList.length,
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            var officialStore = officialStoreList[index];
            return OfficialStoreCard(officialStore: officialStore);
          },
        ),
      ),
    );
  }
}
