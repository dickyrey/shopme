import 'package:shopme/infrastructure/models/store_model.dart';

class Product {
  final String name;
  final Store store;
  final String price;
  final String image;
  Product({this.name, this.store, this.price, this.image});
}
