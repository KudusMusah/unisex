import 'package:get/get.dart';
import 'package:unisex/controllers/home_con.dart';
import 'package:unisex/controllers/nearby_shops_con.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeScreenCon());
    Get.put(NearbyShopsCon());
  }
}
