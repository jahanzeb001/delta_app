import 'package:delta_app/screens/home/model/all_products_response_model.dart';
import 'package:delta_app/screens/home/services/get_all_product_service.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  RxBool isGridView = false.obs;
  RxBool isDealsOfDayGridView = false.obs;
  RxBool isFeaturedProductsGridView = false.obs;
  RxBool isShowSerchField = false.obs;

  @override
  void onInit() {
    getProducts();
    super.onInit();
  }

  void changListType() {
    isGridView.value = !isGridView.value;
  }

  void changDealsOfDayListType() {
    isDealsOfDayGridView.value = !isDealsOfDayGridView.value;
  }

  void changFeaturedProductListType() {
    isFeaturedProductsGridView.value = !isFeaturedProductsGridView.value;
  }

  void switchSerachField() {
    isShowSerchField.value = !isShowSerchField.value;
  }

  //////////////////////get all products
  var loadingAllProducts = false.obs;
  var errorGettingProducts = "".obs;
  List<AllProductsResponse> allProducts = [];

  void getProducts() async {
    loadingAllProducts.value = true;
    errorGettingProducts.value = "";
    var res = await AppProductService.getAllProducts();
    loadingAllProducts.value = false;
    if (res is List<AllProductsResponse>) {
      allProducts = res;
    } else {
      errorGettingProducts.value = res.toString();
      loadingAllProducts.value = false;
    }
  }
}
