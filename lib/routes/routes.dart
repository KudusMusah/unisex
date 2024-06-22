import 'package:get/get.dart';
import '../bindings/home_bind.dart';
import '../bindings/location_bind.dart';
import '../bindings/nearby_shops_bind.dart';
import '../bindings/selected_services_bind.dart';
import '../bindings/shopview_bind.dart';
import '../bindings/sign_in_bind.dart';
import '../bindings/sign_up_bind.dart';
import '../bindings/splashscreen_bind.dart';
import '../bindings/otp_bind.dart';
import '../pages/authpages/location.dart';
import '../pages/authpages/otpscreen.dart';
import '../pages/authpages/sign_in.dart';
import '../pages/authpages/sign_up.dart';
import '../pages/homescreen/home.dart';
import '../pages/nearby_shops/nearby_shops.dart';
import '../pages/shopview/shopviewscreen.dart';
import '../pages/splashscreen.dart';
import '../pages/selected_services/selected_services.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(name: SplashScreen.routeName, page: () => const SplashScreen(), binding: SplashBindings()),
        GetPage(name: SignInScreen.routeName, page: () => const SignInScreen(), binding: SignInBindings()),
        GetPage(name: SignUpScreen.routeName, page: () => const SignUpScreen(), binding: SignUpBindings()),
        GetPage(name: OTPScreen.routeName, page: () => const OTPScreen(), binding: OTPBindings()),
        GetPage(name: LocationScreen.routeName, page: () => const LocationScreen(), binding: LocationBindings()),
        GetPage(name: HomeScreen.routeName, page: () => const HomeScreen(), binding: HomeBindings()),
        GetPage(name: NearbyShopsScreen.routeName, page: () => const NearbyShopsScreen(), binding: NearbyShopsBindings()),
        GetPage(name: ShopViewScreen.routeName, page: () => const ShopViewScreen(), binding: ShopViewBindings()),
        GetPage(name: SelectedServicesScreen.routeName, page: () => const SelectedServicesScreen(), binding: SelectedServiceBindings()),
      ];
}
