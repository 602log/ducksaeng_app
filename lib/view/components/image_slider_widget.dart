import 'package:ducksaeng_app/viewModel/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// main 페이지 최애 이미지 슬라이더 아이템 위젯
class ImageSliderWidget extends GetWidget<HomeController> {
  String imgItem;

  ImageSliderWidget({
    super.key,
    required this.imgItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
          child: Image.network(
            imgItem,
            fit: BoxFit.cover,
            width: 500,
          ),
        ),
      );
  }
}
