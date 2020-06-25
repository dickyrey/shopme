import 'package:flutter/material.dart';
import 'package:shopme/infrastructure/models/product_model.dart';
import 'package:shopme/presentation/product_detail/widgets/product_app_bar.dart';
import 'package:shopme/theme/colors.dart';

class HeaderProductSliverDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final Product product;

  HeaderProductSliverDelegate({this.expandedHeight, this.product});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: <Widget>[
        Image.asset(
          product.image,
          width: MediaQuery.of(context).size.width,
          height: expandedHeight,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 0.0,
          left: 0.0,
          right: 0.0,
          child: ProductAppBar(),
        ),
        Positioned(
          top: expandedHeight - 25.0 - shrinkOffset,
          left: 0.0,
          right: 0.0,
          child: Container(
            width: double.infinity,
            height: 25.0,
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
