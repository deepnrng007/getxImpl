import 'package:get/get.dart';
import 'package:getx_impl/model/product.dart';

class ShoppingController extends GetxController {
  var products = List<Product1>().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProducts();
  }

  fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var apiResult = [
      Product1(1, "First Product", "This is first product", "abd", 30.0),
      Product1(2, "Second Product", "This is second product", "abd", 40.0),
      Product1(3, "Third Product", "This is third product", "abd", 50.0)
    ];
    products.assignAll(apiResult);
  }
}
