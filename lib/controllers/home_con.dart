import 'package:get/get.dart';
import 'package:unisex/pages/nearby_shops/nearby_shops.dart';
import '../utils/user.dart';

class HomeScreenCon extends GetxController {
  User user = User(
      name: 'SHANTEL ABENA JACKSON',
      pic: 'assets/images/owner2.jpg',
      email: 'abenashantel1419@gmail.com',
      regionCity: 'Greater Accra Region, Accra');
  void toNearbyShops() {
    Get.toNamed(NearbyShopsScreen.routeName);
  }
}
