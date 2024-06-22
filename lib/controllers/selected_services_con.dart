import 'package:get/get.dart';
import 'package:unisex/pages/shared/success_dialog.dart';
import 'package:unisex/utils/saloon_service.dart';

class SelectedServicesCon extends GetxController {
  final RxDouble price = 0.0.obs;
  late RxList<SaloonService> services;

  @override
  void onInit() {
    services = Get.arguments;
    super.onInit();
  }

  @override
  void onReady() {
    for (int i = 0; i < services.length; i++) {
      price.value = price.value + services[i].price;
    }
    super.onReady();
  }

  void bookHome() {
    Get.defaultDialog(
      content: const SuccessDialog(),
      title: '',
      radius: 18.0,
    );
  }

  void bookShop() {
    Get.defaultDialog(
      title: '',
      radius: 18.0,
      content: const SuccessDialog(),
    );
  }
}
