import 'package:flutter/material.dart';
import 'package:shopme/infrastructure/models/product_model.dart';
import 'package:shopme/theme/colors.dart';
import 'package:shopme/theme/style.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({@required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        width: 200.0,
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
                image: DecorationImage(
                  image: AssetImage(product.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 15.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      product.name,
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: kTitle15BoldStyle,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          product.store.name,
                          overflow: TextOverflow.ellipsis,
                          style: kTitle13LightStyle,
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
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Rp. ",
                            style: kTitle10BoldStyle.copyWith(color: kRedColor),
                          ),
                          TextSpan(
                            text: product.price,
                            style: kTitle13BoldStyle.copyWith(color: kRedColor),
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
    );
  }
}
