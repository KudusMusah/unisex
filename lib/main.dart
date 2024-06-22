import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unisex/pages/splashscreen.dart';
import 'package:unisex/themes/theme.dart';
import 'routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Unisex",
      getPages: AppRoutes.routes(),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: SplashScreen.routeName
    );
  }
}
