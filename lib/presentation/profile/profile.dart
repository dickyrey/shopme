import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopme/presentation/profile/widgets/profile_list_tile.dart';
import 'package:shopme/presentation/profile/widgets/user_followers.dart';
import 'package:shopme/theme/colors.dart';
import 'package:shopme/theme/style.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 350.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "assets/images/1568133411_956194_1568138794_noticia_normal.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 350.0,
                    color: Colors.black.withOpacity(.7),
                  ),
                  Positioned(
                    bottom: 0.0,
                    right: 0.0,
                    left: 0.0,
                    child: Container(
                      width: double.infinity,
                      height: 25.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0),
                        ),
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 35.0,
                    right: 25.0,
                    child: Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.settings,
                            color: kWhiteColor,
                          ),
                          onPressed: () {},
                        ),
                        SvgPicture.asset(
                          "assets/icons/shopping_cart.svg",
                          color: kWhiteColor,
                          width: 22.0,
                          height: 22.0,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 100.0,
                    left: 75.0,
                    right: 75.0,
                    bottom: 50.0,
                    child: Container(
                      // color: kBlackAccent,
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 45.0,
                            backgroundImage:
                                AssetImage("assets/images/apple.jpg"),
                          ),
                          SizedBox(height: 12.0),
                          Container(
                            child: Stack(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25.0),
                                  child: Text(
                                    "Apple Indonesia",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    style: kTitle18BoldStyle.copyWith(
                                        color: kWhiteColor),
                                  ),
                                ),
                                Positioned(
                                  top: 0.0,
                                  right: 0.0,
                                  child: Image.asset(
                                    "assets/images/verified.png",
                                    width: 15.0,
                                    height: 15.0,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 12.0),
                          Spacer(),
                          Container(
                            alignment: Alignment.center,
                            child: Row(
                              children: <Widget>[
                                UserFollowers(
                                  total: "200k",
                                  title: "Pengikut",
                                ),
                                Spacer(),
                                UserFollowers(
                                  total: "925",
                                  title: "Mengikuti",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                children: <Widget>[
                  ProfileListTile(
                    title: "Upgrade ke Premium",
                    icon: "assets/icons/crown.svg",
                    color: kYellowColor,
                  ),
                  ProfileListTile(
                    title: "Favorit Saya",
                    icon: "assets/icons/favorite_border.svg",
                    color: kRedColor,
                  ),
                  ProfileListTile(
                    title: "Keranjang Belanja",
                    icon: "assets/icons/shopping_cart.svg",
                    color: kBlueColor,
                  ),
                  ProfileListTile(
                    title: "Pengaturan Akun",
                    icon: "assets/icons/user_border.svg",
                    color: kGreenColor,
                  ),
                  Divider(
                    color: kBlackAccent,
                  ),
                  ProfileListTile(
                    title: "Pusat Bantuan",
                    icon: "assets/icons/help-circle-outline.svg",
                    color: kIndigoColor,
                  ),
                  ProfileListTile(
                    title: "Logout",
                    icon: "assets/icons/exit_app.svg",
                    color: kBlackColor,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
