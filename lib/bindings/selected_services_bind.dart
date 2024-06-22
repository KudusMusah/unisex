import 'package:get/get.dart';
import 'package:unisex/controllers/selected_services_con.dart';

class SelectedServiceBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SelectedServicesCon());
  }
}
