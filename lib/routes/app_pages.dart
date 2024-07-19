import 'package:ducksaeng_app/bindings/home_binding.dart';
import 'package:ducksaeng_app/routes/app_routes.dart';
import 'package:ducksaeng_app/view/screens/home_screen.dart';
import 'package:get/get.dart';

class AppPages {

  static const INITIAL = Routes.HOME;

  static final routes = [

    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
