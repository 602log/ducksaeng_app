import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class HomeController extends GetxController with GetSingleTickerProviderStateMixin {

  TextTheme? textTheme;
  RxList<String> tabs = <String>[].obs;
  RxInt current = 0.obs;

  HomeController() {
    tabs.value = ['지도보기', '리스트보기'];
    // tabController
  }

  @override
  void onInit() async {
    super.onInit();
  }
}