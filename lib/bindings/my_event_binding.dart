import 'package:ducksaeng_app/viewModel/my_event_controller.dart';
import 'package:get/get.dart';

class MyEventBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut<MyEventController>(() => MyEventController(),);
  }
}