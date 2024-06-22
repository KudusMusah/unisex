import 'package:get/get.dart';
import 'package:unisex/pages/selected_services/selected_services.dart';
import 'package:unisex/utils/saloon.dart';

import '../utils/saloon_service.dart';

class ShopViewCon extends GetxController {
  final RxBool filterMale = RxBool(true);
  late Saloon saloon;
  final RxList<SaloonService> bookedServices = <SaloonService>[].obs;
  // final Saloon saloon = Saloon(
  //     name: "ACE OF SPADE BARBERING SHOPkljlkjlsjlfjdslkfjl",
  //     location: "East Legon - Legon",
  //     ownerImg: 'assets/images/owner1.jpg',
  //     coverImg: 'assets/images/cover1.jpg',
  //     services: [
  //       // SaloonService(name: 'ADULT HAIRCUT', price: 25.00, time: 40),
  //       // SaloonService(name: 'SHAVING', price: 20.00, time: 40),
  //       // SaloonService(name: 'HAIRCUT AND BLACK DYE', price: 35.00, time: 40),
  //       // SaloonService(name: 'DREADLOCKS', price: 90.00, time: 40),
  //       // SaloonService(name: 'KIDS HAIRCUT', price: 15.00, time: 40),
  //       // SaloonService(name: 'COLOR DYE', price: 15.00, time: 40),
  //     ]);
  @override
  void onInit() {
    saloon = Get.arguments;
    super.onInit();
  }

  void book() {
    print('book');
  }

  void favorite() {
    print('favourite');
  }

  void checkBookings() {
    Get.toNamed(SelectedServicesScreen.routeName, arguments: bookedServices);
  }

  void filter() {}

  void bookService(index) {
    bookedServices.add(saloon.services[index]);
  }
}
