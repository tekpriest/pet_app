import 'package:pet_app/models/product.dart';

class Products {
  static List<ProductModel> getProducts() {
    return [
      const ProductModel(
        imgUrl: 'assets/imgs/products/rc_kitten.png',
        name: 'RC Kitten',
        amount: 20.99,
      ),
      const ProductModel(
        imgUrl: 'assets/imgs/products/rc_persian.png',
        name: 'RC Persian',
        amount: 22.99,
      ),
      const ProductModel(
        imgUrl: 'assets/imgs/products/rc_persian.png',
        name: 'RC Persian',
        amount: 12.99,
      ),
      const ProductModel(
        imgUrl: 'assets/imgs/products/rc_kitten.png',
        name: 'RC Persian',
        amount: 12.99,
      ),
    ];
  }
}
