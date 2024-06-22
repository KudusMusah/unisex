import 'package:get/get.dart';
import 'package:unisex/controllers/shopview_con.dart';

class ShopViewBindings implements Bindings {
@override
void dependencies() {
  Get.put(ShopViewCon());
  }
}