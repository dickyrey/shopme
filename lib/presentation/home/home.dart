import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shopme/infrastructure/local_data/category_listitem.dart';
import 'package:shopme/infrastructure/local_data/product_listitem.dart';
import 'package:shopme/infrastructure/local_data/store_model.dart';
import 'package:shopme/presentation/home/widgets/carousel_widget.dart';
import 'package:shopme/presentation/home/widgets/category_card.dart';
import 'package:shopme/presentation/home/widgets/custom_list_tile.dart';
import 'package:shopme/presentation/home/widgets/official_store_card.dart';
import 'package:shopme/presentation/home/widgets/product_card.dart';
import 'package:shopme/theme/colors.dart';
import 'package:shopme/theme/style.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        leading: Container(),
        backgroundColor: kRedColor.withOpacity(.1),
        elevation: 0.0,
        title: Text("BELKA", style: kTitle18BoldStyle),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: kBlackColor,
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CarouselWidget(),
              SizedBox(height: 25.0),
              CustomListTile(title: "Kategori"),
              SizedBox(height: 15.0),
              Container(
                width: double.infinity,
                height: 100.0,
                child: ListView.builder(
                  itemCount: categoryList.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    var category = categoryList[index];

                    return CategoryCard(category: category);
                  },
                ),
              ),
              SizedBox(height: 25.0),
              CustomListTile(title: "Produk Populer"),
              SizedBox(height: 15.0),
              Container(
                width: double.infinity,
                height: 250.0,
                child: ListView.builder(
                  itemCount: productList.length,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var product = productList[index];
                    return Padding(
                      padding: const EdgeInsets.only(left: 18.0, bottom: 12.0),
                      child: ProductCard(product: product),
                    );
                  },
                ),
              ),
              SizedBox(height: 25.0),
              CustomListTile(title: "Official Store"),
              SizedBox(height: 15.0),
              Container(
                width: double.infinity,
                height: 120.0,
                child: ListView.builder(
                  itemCount: officialStoreList.length,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var store = officialStoreList[index];
                    return OfficialStoreCard(store: store);
                  },
                ),
              ),
              SizedBox(height: 25.0),
              CustomListTile(title: "Trend Saat Ini"),
              SizedBox(height: 15.0),
              StaggeredGridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                staggeredTiles: [
                  const StaggeredTile.count(2, 2),
                  const StaggeredTile.count(1, 1),
                  const StaggeredTile.count(1, 1),
                ],
                children: trendList
                    .map(
                      (e) => Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(e.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              SizedBox(height: 25.0),
              CustomListTile(title: "Rekomendasi"),
              SizedBox(height: 15.0),
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
                    // return Container(
                    //   child: Image.asset(product.image),
                    // );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
