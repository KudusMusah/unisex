import 'package:flutter/material.dart';

class SaloonService {
  final String name;
  final int time;
  final double price;

  SaloonService({required this.name, required this.time, required this.price});

  factory SaloonService.fromJson(Map<String, dynamic> data) {
    // note the explicit cast to String
    // this is required if robust lint rules are enabled
    final name = data['name'] as String;
    final time = data['time'] as int;
    final price = data['price'] as double;

    return SaloonService(name: name, time: time, price: price);
  }

  Map<String, dynamic> toJson() {
    // return a map literal with all the non-null key-value pairs
    return {'name': name, 'time': time, 'price': price};
  }
}
