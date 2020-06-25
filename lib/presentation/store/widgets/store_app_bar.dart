import 'package:flutter/material.dart';
import 'package:shopme/theme/colors.dart';

class StoreAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      ),
      child: SizedBox(
        height: kToolbarHeight,
        child: Row(
          children: <Widget>[
            //Button Navigation
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: CircleAvatar(
                  radius: 20.0,
                  backgroundColor: kBlackAccent.withOpacity(.5),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Spacer(),
            //Actions button
            //Search Button
            Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: CircleAvatar(
                radius: 20.0,
                backgroundColor: kBlackAccent.withOpacity(.5),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
            //Favorite Button
            Padding(
              padding: EdgeInsets.only(right: 18.0),
              child: CircleAvatar(
                radius: 20.0,
                backgroundColor: kBlackAccent.withOpacity(.5),
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
