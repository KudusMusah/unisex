import 'package:unisex/utils/saloon_service.dart';

class Saloon {
  final String name;
  final String location;
  final String locationService;
  final int ratings;
  final String ownerImg;
  final String coverImg;
  final List<SaloonService> services;

  Saloon(
      {this.ratings = 5,
      this.locationService = 'HOME/SHOP SERVICES AVAILABLE',
      required this.ownerImg,
      required this.coverImg,
      required this.name,
      required this.location,
      required this.services});

  factory Saloon.fromJson(Map<String, dynamic> data) {
    // note the explicit cast to String
    // this is required if robust lint rules are enabled
    final name = data['name'] as String;
    final location = data['location'] as String;
    final locationService = data['locationService'] as String;
    final ratings = data['ratings'] as int;
    final coverImg = data['coverImg'] as String;
    final ownerImg = data['ownerImg'] as String;
    final services = data['services'] as List<SaloonService>;
    return Saloon(
        name: name,
        location: location,
        locationService: locationService,
        ratings: ratings,
        coverImg: coverImg,
        services: services,
        ownerImg: ownerImg);
  }

  Map<String, dynamic> toJson() {
    // return a map literal with all the non-null key-value pairs
    return {
      'name': name,
      'location': location,
      'locationService': locationService,
      'ratings': ratings,
      'coverImg': coverImg,
      'ownerImg': ownerImg,
      'services': services
    };
  }
}
