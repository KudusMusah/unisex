import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../pages/homescreen/home.dart';

class LocationCon extends GetxController {
  RxString value = "Accra".obs;
  List<String> regionCityStr = [
    "The Northern Region, Tamale",
    "The Ashanti Region, Kumasi",
    "The Western Region, Sekondi",
    "The Volta Region, Ho",
    "The Eastern Region, Koforidua",
    "The Upper West Region, Wa",
    "The Upper East Region, Bolgatanga",
    "The Central Region, Cape Coast",
    "The Bono East Region, Techiman",
    "The Greater Accra Region, Accra",
    "The Savannah Region, Damango",
    "The North-East Region, Nareligu",
    "The Oti Region, Dambai",
    "The Western North Region, Sefwi Wiawso",
    "The Ahafo Region, Goaso",
    "Bono Region, Sunyani"
  ];
  List<DropdownMenuItem> regionCity = [];

  List<DropdownMenuItem> menuItems() {
    return regionCityStr
        .map(
          (text) => DropdownMenuItem(
            onTap: () {
              valueChanged(text);
            },
            value: text.split(", ")[1],
            child: Text(text),
          ),
        )
        .toList();
  }

  void valueChanged(newValue) {
    value.value = newValue;
  }

  void done() {
    print("done");
    Get.offAllNamed(HomeScreen.routeName);
  }
}
