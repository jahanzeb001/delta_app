import 'package:delta_app/constant/base_client.dart';
import 'package:delta_app/screens/home/model/all_products_response_model.dart';

import '../../../constant/urls/app_urls.dart';
import 'package:http/http.dart' as http;

class AppProductService {
  static Future<dynamic> getAllProducts() async {
    var url = "${AppUrls.baseurl}${AppUrls.allProducts}";
    try {
      var res = await BaseClientClass.get(url, "");
      if (res is http.Response) {
        return allProductsResponseFromJson(res.body);
      } else {
        return res;
      }
    } catch (e) {
      return e;
    }
  }
}
