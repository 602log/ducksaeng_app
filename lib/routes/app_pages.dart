import 'package:ducksaeng_app/bindings/bias_binding.dart';
import 'package:ducksaeng_app/bindings/event_binding.dart';
import 'package:ducksaeng_app/bindings/home_binding.dart';
import 'package:ducksaeng_app/bindings/my_event_binding.dart';
import 'package:ducksaeng_app/bindings/my_profile_binding.dart';
import 'package:ducksaeng_app/routes/app_routes.dart';
import 'package:ducksaeng_app/view/screens/bias_list_screen.dart';
import 'package:ducksaeng_app/view/screens/event_detail_screen.dart';
import 'package:ducksaeng_app/view/screens/event_list_screen.dart';
import 'package:ducksaeng_app/view/screens/event_screen.dart';
import 'package:ducksaeng_app/view/screens/home_screen.dart';
import 'package:ducksaeng_app/view/screens/my_event_list_screen.dart';
import 'package:ducksaeng_app/view/screens/my_profile_screen.dart';
import 'package:get/get.dart';

class AppPages {

  static const INITIAL = Routes.HOME;

  static final routes = [

    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: Routes.EVENT,
      page: () => EventScreen(),
      binding: EventBinding(),
    ),

    GetPage(
      name: Routes.EVENT_LIST,
      page: () => EventListScreen(),
      binding: EventBinding(),
    ),

    GetPage(
      name: Routes.EVENT_DETAIL,
      page: () => EventDetailScreen(),
      binding: EventBinding(),
      transitionDuration: const Duration(microseconds: 300),
    ),

    GetPage(
      name: Routes.BIAST_LIST,
      page: () => BiasListScreen(),
      binding: BiasBinding(),
    ),

    GetPage(
      name: Routes.MY_PROFILE,
      page: () => MyProfileScreen(),
      binding: MyProfileBinding(),
    ),

    GetPage(
      name: Routes.MY_EVENT_LIST,
      page: () => MyEventListScreen(),
      binding: MyEventBinding(),
      transition: Transition.noTransition,
    ),
  ];
}
