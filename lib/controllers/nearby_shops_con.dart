import 'package:get/get.dart';
import 'package:unisex/pages/shopview/shopviewscreen.dart';
import 'package:unisex/utils/saloon.dart';
import 'package:unisex/utils/saloon_service.dart';

class NearbyShopsCon extends GetxController {
  Saloon saloon = Saloon(
      name: 'JMJ Saloon and Barbering Shop',
      location: 'Madina-Accra',
      ownerImg: 'assets/images/owner1.jpg',
      coverImg: 'assets/images/cover1.jpg',
      services: [
        SaloonService(name: 'ADULT HAIRCUT', price: 25.00, time: 40),
        SaloonService(name: 'SHAVING', price: 20.00, time: 40),
        SaloonService(name: 'HAIRCUT AND BLACK DYE', price: 35.00, time: 40),
        SaloonService(name: 'DREADLOCKS', price: 90.00, time: 40),
        SaloonService(name: 'KIDS HAIRCUT', price: 15.00, time: 40),
        SaloonService(name: 'COLOR DYE', price: 15.00, time: 40),
      ]);
  List<Saloon> saloons = [
    Saloon(
        name: 'JMJ Saloon and Barbering Shop',
        location: 'Madina-Accra',
        ownerImg: 'assets/images/owner1.jpg',
        coverImg: 'assets/images/cover1.jpg', 
        services: [
        SaloonService(name: 'ADULT HAIRCUT', price: 25.00, time: 40),
        SaloonService(name: 'SHAVING', price: 20.00, time: 40),
        SaloonService(name: 'HAIRCUT AND BLACK DYE', price: 35.00, time: 40),
        SaloonService(name: 'DREADLOCKS', price: 90.00, time: 40),
        SaloonService(name: 'KIDS HAIRCUT', price: 15.00, time: 40),
        SaloonService(name: 'COLOR DYE', price: 15.00, time: 40),
      ],),
    Saloon(
        name: 'Ace of Spade Barbering Shop',
        location: 'Awoshie-Ablekuma',
        ownerImg: 'assets/images/owner1.jpg',
        coverImg: 'assets/images/cover1.jpg',
        services: [
        SaloonService(name: 'ADULT HAIRCUT', price: 25.00, time: 40),
        SaloonService(name: 'SHAVING', price: 20.00, time: 40),
        SaloonService(name: 'HAIRCUT AND BLACK DYE', price: 35.00, time: 40),
        SaloonService(name: 'DREADLOCKS', price: 90.00, time: 40),
        SaloonService(name: 'KIDS HAIRCUT', price: 15.00, time: 40),
        SaloonService(name: 'COLOR DYE', price: 15.00, time: 40),
      ],),
    Saloon(
        name: 'Blooming Beauty Saloon',
        location: 'East Legon-Accra',
        ownerImg: 'assets/images/owner1.jpg',
        coverImg: 'assets/images/cover1.jpg',
        services: [
        SaloonService(name: 'ADULT HAIRCUT', price: 25.00, time: 40),
        SaloonService(name: 'SHAVING', price: 20.00, time: 40),
        SaloonService(name: 'HAIRCUT AND BLACK DYE', price: 35.00, time: 40),
        SaloonService(name: 'DREADLOCKS', price: 90.00, time: 40),
        SaloonService(name: 'KIDS HAIRCUT', price: 15.00, time: 40),
        SaloonService(name: 'COLOR DYE', price: 15.00, time: 40),
      ],),
    Saloon(
        name: 'Ama Jane Saloon and Cosmetics',
        location: 'Awoshie-Ablekuma',
        ownerImg: 'assets/images/owner1.jpg',
        coverImg: 'assets/images/cover1.jpg',
        services: [
        SaloonService(name: 'ADULT HAIRCUT', price: 25.00, time: 40),
        SaloonService(name: 'SHAVING', price: 20.00, time: 40),
        SaloonService(name: 'HAIRCUT AND BLACK DYE', price: 35.00, time: 40),
        SaloonService(name: 'DREADLOCKS', price: 90.00, time: 40),
        SaloonService(name: 'KIDS HAIRCUT', price: 15.00, time: 40),
        SaloonService(name: 'COLOR DYE', price: 15.00, time: 40),
      ],),
    Saloon(
        name: 'Celebrity Barbering Shop',
        location: 'Tema-Accra',
        ownerImg: 'assets/images/owner1.jpg',
        coverImg: 'assets/images/cover1.jpg',
        services: [
        SaloonService(name: 'ADULT HAIRCUT', price: 25.00, time: 40),
        SaloonService(name: 'SHAVING', price: 20.00, time: 40),
        SaloonService(name: 'HAIRCUT AND BLACK DYE', price: 35.00, time: 40),
        SaloonService(name: 'DREADLOCKS', price: 90.00, time: 40),
        SaloonService(name: 'KIDS HAIRCUT', price: 15.00, time: 40),
        SaloonService(name: 'COLOR DYE', price: 15.00, time: 40),
      ],),
    Saloon(
        name: 'Abiata Barbering Shop',
        location: 'Kaneshie-Accra',
        ownerImg: 'assets/images/owner0.jpg',
        coverImg: 'assets/images/cover2.jpg',
        services: [
        SaloonService(name: 'ADULT HAIRCUT', price: 25.00, time: 40),
        SaloonService(name: 'SHAVING', price: 20.00, time: 40),
        SaloonService(name: 'HAIRCUT AND BLACK DYE', price: 35.00, time: 40),
        SaloonService(name: 'DREADLOCKS', price: 90.00, time: 40),
        SaloonService(name: 'KIDS HAIRCUT', price: 15.00, time: 40),
        SaloonService(name: 'COLOR DYE', price: 15.00, time: 40),
      ],),
    Saloon(
        name: 'Sensational Beauty Saloon',
        location: 'Tema-Accra',
        ownerImg: 'assets/images/owner3.jpg',
        coverImg: 'assets/images/cover1.jpg',
        services: [
        SaloonService(name: 'ADULT HAIRCUT', price: 25.00, time: 40),
        SaloonService(name: 'SHAVING', price: 20.00, time: 40),
        SaloonService(name: 'HAIRCUT AND BLACK DYE', price: 35.00, time: 40),
        SaloonService(name: 'DREADLOCKS', price: 90.00, time: 40),
        SaloonService(name: 'KIDS HAIRCUT', price: 15.00, time: 40),
        SaloonService(name: 'COLOR DYE', price: 15.00, time: 40),
      ],),
    Saloon(
        name: 'Queenie Saloon and Cosmetics',
        location: 'Awoshie-Ablekuma',
        ownerImg: 'assets/images/owner2.jpg',
        coverImg: 'assets/images/cover2.jpg',
        services: [
        SaloonService(name: 'ADULT HAIRCUT', price: 25.00, time: 40),
        SaloonService(name: 'SHAVING', price: 20.00, time: 40),
        SaloonService(name: 'HAIRCUT AND BLACK DYE', price: 35.00, time: 40),
        SaloonService(name: 'DREADLOCKS', price: 90.00, time: 40),
        SaloonService(name: 'KIDS HAIRCUT', price: 15.00, time: 40),
        SaloonService(name: 'COLOR DYE', price: 15.00, time: 40),
      ],),
    Saloon(
        name: 'Ace of Spade Barbering Shop',
        location: 'Awoshie-Ablekuma',
        ownerImg: 'assets/images/owner0.jpg',
        coverImg: 'assets/images/cover0.jpg',
        services: [
        SaloonService(name: 'ADULT HAIRCUT', price: 25.00, time: 40),
        SaloonService(name: 'SHAVING', price: 20.00, time: 40),
        SaloonService(name: 'HAIRCUT AND BLACK DYE', price: 35.00, time: 40),
        SaloonService(name: 'DREADLOCKS', price: 90.00, time: 40),
        SaloonService(name: 'KIDS HAIRCUT', price: 15.00, time: 40),
        SaloonService(name: 'COLOR DYE', price: 15.00, time: 40),
      ],),
    Saloon(
        name: 'Ace of Spade Barbering Shop',
        location: 'Awoshie-Ablekuma',
        ownerImg: 'assets/images/owner0.jpg',
        coverImg: 'assets/images/cover0.jpg',
        services: [
        SaloonService(name: 'ADULT HAIRCUT', price: 25.00, time: 40),
        SaloonService(name: 'SHAVING', price: 20.00, time: 40),
        SaloonService(name: 'HAIRCUT AND BLACK DYE', price: 35.00, time: 40),
        SaloonService(name: 'DREADLOCKS', price: 90.00, time: 40),
        SaloonService(name: 'KIDS HAIRCUT', price: 15.00, time: 40),
        SaloonService(name: 'COLOR DYE', price: 15.00, time: 40),
      ],),
    Saloon(
        name: 'JMJ Saloon and Barbering Shop',
        location: 'Madina-Accra',
        ownerImg: 'assets/images/owner1.jpg',
        coverImg: 'assets/images/cover1.jpg',
        services: [
        // SaloonService(name: 'ADULT HAIRCUT', price: 25.00, time: 40),
        // SaloonService(name: 'SHAVING', price: 20.00, time: 40),
        // SaloonService(name: 'HAIRCUT AND BLACK DYE', price: 35.00, time: 40),
        // SaloonService(name: 'DREADLOCKS', price: 90.00, time: 40),
        // SaloonService(name: 'KIDS HAIRCUT', price: 15.00, time: 40),
        // SaloonService(name: 'COLOR DYE', price: 15.00, time: 40),
      ],),
  ];

  void toShopView(index) {
    Get.toNamed(ShopViewScreen.routeName, arguments: saloons[index]);
  }
}
