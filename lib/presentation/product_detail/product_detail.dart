import 'package:flutter/material.dart';
import 'package:shopme/infrastructure/local_data/product_listitem.dart';
import 'package:shopme/infrastructure/models/product_model.dart';
import 'package:shopme/presentation/home/widgets/custom_list_tile.dart';
import 'package:shopme/presentation/home/widgets/product_card.dart';
import 'package:shopme/presentation/product_detail/widgets/headerProductSliverDelegate.dart';
import 'package:shopme/presentation/product_detail/widgets/read_more_widgets.dart';
import 'package:shopme/theme/colors.dart';
import 'package:shopme/theme/style.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ProductDetail extends StatelessWidget {
  final Product product;
  ProductDetail({@required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            delegate: HeaderProductSliverDelegate(
              expandedHeight: 250.0,
              product: product,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        product.name,
                        textAlign: TextAlign.left,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: kTitle18BoldStyle,
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Rp. ${product.price}",
                        textAlign: TextAlign.left,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: kTitle18BoldRedStyle,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SmoothStarRating(
                            allowHalfRating: false,
                            onRated: (v) {},
                            starCount: 5,
                            rating: 0.5, // rating 0.1 - 5.0
                            size: 30.0,
                            isReadOnly: true,
                            color: kRedColor,
                            borderColor: kRedColor,
                            spacing: 0.0,
                          ),
                          IconButton(
                            icon: Icon(Icons.favorite_border),
                            color: kRedColor,
                            iconSize: 30.0,
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        "Deskripsi Produk",
                        textAlign: TextAlign.left,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: kTitle18BoldStyle,
                      ),
                    ),
                    SizedBox(height: 12.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: ReadMoreText(
                        product.description,
                        trimLines: 3,
                        colorClickableText: kRedColor,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: "\n Lihat lainnya",
                        trimExpandedText: "\nSembunyikan",
                        style: kTitle15LightStyle,
                      ),
                    ),
                    SizedBox(height: 15.0),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25.0,
                        backgroundImage: AssetImage(product.store.logo),
                      ),
                      title: Row(
                        children: <Widget>[
                          Text(
                            product.store.name,
                            style: kTitle15BoldStyle,
                          ),
                          SizedBox(width: 12.0),
                          product.store.isVerified
                              ? Image.asset(
                                  "assets/images/verified.png",
                                  width: 15.0,
                                  height: 15.0,
                                )
                              : Container(),
                        ],
                      ),
                      subtitle: Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: kBlackAccent,
                            size: 13.0,
                          ),
                          Text(
                            product.store.address,
                            style: kTitle13LightStyle,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15.0),
                    CustomListTile(
                      title: "Produk dari ${product.store.name}",
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      width: double.infinity,
                      height: 250.0,
                      child: ListView.builder(
                        itemCount: trendList.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          var product = trendList[index];
                          return Padding(
                            padding: const EdgeInsets.only(
                              left: 18.0,
                              bottom: 12.0,
                            ),
                            child: ProductCard(product: product),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 15.0),
                    CustomListTile(
                      title: "Penilaian Produk",
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      width: double.infinity,
                      height: 145.0,
                      child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          // var product = trendList[index];
                          return Padding(
                            padding: const EdgeInsets.only(
                              left: 18.0,
                              bottom: 12.0,
                            ),
                            child: Container(
                              width: 200.0,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  CircleAvatar(
                                    radius: 18.0,
                                    backgroundImage: AssetImage(
                                        "assets/images/034389000_1556691957-Jessica-Veranda4.jpg"),
                                  ),
                                  SizedBox(width: 12.0),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Jessica Veranda",
                                            style: kTitle15BoldStyle),
                                        SizedBox(height: 3.0),
                                        Text("1 minutes Ago",
                                            style: kTitle10LightStyle),
                                        SizedBox(height: 3.0),
                                        SmoothStarRating(
                                          allowHalfRating: false,
                                          onRated: (v) {},
                                          starCount: 5,
                                          rating: 4.5, // rating 0.1 - 5.0
                                          size: 14.0,
                                          isReadOnly: true,
                                          color: kRedColor,
                                          borderColor: kRedColor,
                                          spacing: 0.0,
                                        ),
                                        Spacer(),
                                        Text(
                                          "aut dicta possimus sint mollitia voluptas commodi quo doloremque iste corrupti reiciendis voluptatem eius rerum sit cumque quod eligendi laborum minima perferendis recusandae assumenda consectetur porro architecto ipsum ipsam",
                                          style: kTitle13LightStyle,
                                          maxLines: 5,
                                          overflow: TextOverflow.ellipsis,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 15.0),
                    CustomListTile(
                      title: "Produk Serupa",
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: GridView.builder(
                        itemCount: productList.length,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 1.0,
                          mainAxisSpacing: 1.0,
                          childAspectRatio: 1.1 / 1.6,
                        ),
                        itemBuilder: (context, index) {
                          var product = productList[index];
                          return ProductCard(product: product);
                        },
                      ),
                    ),
                    SizedBox(height: 15.0),
                    SizedBox(height: 205.0),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
