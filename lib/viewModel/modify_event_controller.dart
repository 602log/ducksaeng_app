import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ModifyEventController extends GetxController {

  TextEditingController locationNameTextController = TextEditingController();   // 카페 이름
  TextEditingController eventNameTextController = TextEditingController();      // 이벤트 이름
  TextEditingController addressTextController = TextEditingController();        // 주소
  TextEditingController detailAddressTextController = TextEditingController();  // 상세 주소
  DateTime startDate = DateTime.now();                                          // 이벤트 시작일
  DateTime endDate = DateTime.now();                                            // 이벤트 종료일
  TextEditingController ownerTextController = TextEditingController();          // 주최자 계정
  DateTime startTime = DateTime.timestamp();                                    // 시작 시간
  DateTime endTime = DateTime.timestamp();                                      // 끝나는 시간
  List<String> benefitItem = [];                                                // 특전
  bool hasLuckyDraw = false;                                                    // 럭키 드로우 유무




  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}