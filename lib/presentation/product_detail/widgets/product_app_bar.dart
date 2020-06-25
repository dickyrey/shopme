import 'package:flutter/material.dart';
import 'package:shopme/theme/colors.dart';

class ProductAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      ),
      child: SizedBox(
        height: kToolbarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
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
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: CircleAvatar(
                radius: 20.0,
                backgroundColor: kBlackAccent.withOpacity(.5),
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
