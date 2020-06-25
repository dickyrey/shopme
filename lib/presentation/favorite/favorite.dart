import 'package:flutter/material.dart';
import 'package:shopme/infrastructure/local_data/product_listitem.dart';
import 'package:shopme/presentation/home/widgets/product_card.dart';
import 'package:shopme/theme/colors.dart';
import 'package:shopme/theme/style.dart';

class Favorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kWhiteColor,
        title: Text("Favorit Saya", style: kTitle18BoldStyle),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 15.0),
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
            // return Container(
            //   child: Image.asset(product.image),
            // );
          },
        ),
      ),
    );
  }
}
