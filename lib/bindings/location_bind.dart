import 'package:get/get.dart';
import 'package:unisex/controllers/location_con.dart';

class LocationBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(LocationCon());
  }
}
