import 'package:get/get.dart';

import '../controllers/nearby_shops_con.dart';

class NearbyShopsBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(NearbyShopsCon());
  }
}
