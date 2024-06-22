class User {
  final String name;
  final String email;
  final String pic;
  final String regionCity;
  final List<String>? favourites;
  final String about;
  final String support;

  User(
      {required this.name,
      required this.email,
      required this.pic,
      required this.regionCity,
      this.favourites,
      this.about = "NA",
      this.support = "NA"});

  // JSON to Dart
  factory User.fromJson(Map<String, dynamic> data) {
    // note the explicit cast to String
    // this is required if robust lint rules are enabled
    final name = data['name'] as String;
    final email = data['email'] as String;
    final pic = data['pic'] as String;
    final regionCity = data['regionCity'] as String;
    final favourites = data['favourites'] as List<String>;
    final about = data['about'] as String;
    final support = data['support'] as String;
    return User(name: name, email: email, pic:pic, regionCity: regionCity, favourites: favourites, about: about, support: support);
  }

// JSON Serialization with toJson()
// note the return type
  Map<String, dynamic> toJson() {
    // return a map literal with all the non-null key-value pairs
    return {
      'name': name,
      'email': email,
      'pic': pic,
      'regionCity': regionCity,
      'favourites': favourites,
      'about': about,
      'support': support
    };
  }
}
