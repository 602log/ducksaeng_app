import 'package:get/get.dart';

/// 생일 카페 (지도, 리스트) 화면용
class EventController extends GetxController {

  EventController () {
    print('event controller construct');
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print('event controller oninit');
  }

  @override
  void refresh() {
    // TODO: implement refresh
    super.refresh();
    print('event controller refresh');
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

}

