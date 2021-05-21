import 'package:getx_impl/model/product.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  // static var client= http.Client();

  Future<List<Product>> fetchProducts() async {
    var response = await http.get(
        "http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline");
    if (response.statusCode == 200) {
      var jsonstring = response.body;
      return productFromJson(jsonstring);
    } else {
      //show error message
      return null;
    }
  }
}
