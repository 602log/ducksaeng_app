import 'package:get/get.dart';

import '../viewModel/modify_event_controller.dart';

class ModifyEventBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut<ModifyEventController>(() => ModifyEventController(),);
  }
}