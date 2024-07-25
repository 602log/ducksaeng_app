import 'package:ducksaeng_app/viewModel/bias_controller.dart';
import 'package:get/get.dart';

class BiasBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut<BiasController>(() => BiasController(),);
  }
}