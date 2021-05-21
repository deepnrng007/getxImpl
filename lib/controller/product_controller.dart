import 'package:get/get.dart';
import 'package:getx_impl/model/product.dart';
import 'package:getx_impl/services/remote_service.dart';

class ProductController extends GetxController {
  var prodList = List<Product>().obs;
  var isLoading = true.obs;

  @override
  void onInit() {
      super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await RemoteServices().fetchProducts();
      if (products != null) {
        prodList.assignAll(products);
      }
    }finally{
      isLoading(false);
    }
  }
}
