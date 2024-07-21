import 'package:ducksaeng_app/viewModel/event_controller.dart';
import 'package:get/get.dart';

class EventBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut<EventController>(() => EventController(),);
  }
}