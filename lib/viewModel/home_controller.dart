import 'package:ducksaeng_app/view/components/image_slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

/// 홈 스크린용
class HomeController extends GetxController with GetSingleTickerProviderStateMixin {

  TextTheme? textTheme;
  RxList<String> tabs = <String>[].obs;
  RxInt current = 0.obs;

  List<String> imgList = [];
  List<Widget> imgWidget = [];

  HomeController() {
    print('constructor');
    tabs.value = ['지도보기', '리스트보기'];

    // todo : 추후 삭제 예정
    imgList = [
      'https://mblogthumb-phinf.pstatic.net/MjAyMDA5MTdfMzAg/MDAxNjAwMzMxNTU5NzA3.G-oRFcjSLEaao9SvPRkLVBrfjwhOGDngTombKkYM3UQg.hHv2b_kHMCiIVcXygyOR1lddrT--nmmCvvunAD7vr6Eg.PNG.ms1084200/1600331558204.png?type=w800',
      'https://img.gqkorea.co.kr/gq/2023/11/style_6563f59d3588d.jpg',
      'https://mblogthumb-phinf.pstatic.net/MjAyMDA5MTdfMTkz/MDAxNjAwMzMxNTYyNzMw.ohYzDaVSRNWt3OXq2IJtZ9iUohyp7Icez-qcTHhIpbog.gY8MDfxc9ionOQdR1BNJLMkYG5xpMd9lRbgTyqbr5zgg.PNG.ms1084200/1600331561151.png?type=w800',
      'https://mblogthumb-phinf.pstatic.net/MjAyMDA5MTdfMjk3/MDAxNjAwMzMxNTY1MDY1.H0syWuE7teorucB-FRiBYlhZ5ij0dF211gz3e3-Zr2Qg.9B4XFZSLoWkKboZnJmvnuxFfgg2YB23Udtu7jJ0z3tog.PNG.ms1084200/1600331562995.png?type=w800',
      'https://mblogthumb-phinf.pstatic.net/MjAyMDA5MTdfMjU2/MDAxNjAwMzMxNTY2MTkx.NnoMxLJ4X_nMqgfCAKu9YmdhpKku9RN8CegyEjcPpkUg.71gVBOZdJ3dEK_se62HBqTkWnD2luU0cQXNXIb-dxucg.PNG.ms1084200/1600331564541.png?type=w800',
      'https://mblogthumb-phinf.pstatic.net/MjAyMDA5MTdfNTYg/MDAxNjAwMzMxNTY3NDM0.CXDtSNJFkCGskctHgZWjiTTbl3dZcRsODTJw63vnpwUg.a-NkKUSt-FGx0ab1XZgE5s-lBrNySh4MaVKMwmQ5feAg.PNG.ms1084200/1600331565684.png?type=w800',
    ];
    // tabController
  }

  @override
  void onInit() async {
    super.onInit();
    imgWidget = imgList.map((e) => ImageSliderWidget(imgItem: e,),).toList();
  }

  @override
  void refresh() {
    // TODO: implement refresh
    super.refresh();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}