import 'package:get/get.dart';
import 'package:getx_impl/model/product.dart';

class CartController extends GetxController {
  var cartItems = List<Product1>().obs;
  int get count=> cartItems.length;
  double get totalAmount =>
      cartItems.fold(0, (sum, item) => sum + item.productPrice);

  addToCart(Product1 product) {
    cartItems.add(product);
  }
}
