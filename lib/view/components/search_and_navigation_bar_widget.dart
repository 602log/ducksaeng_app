import 'dart:ui';

import 'package:ducksaeng_app/view/components/search_text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// 검색창 + 상단 네비게이션 바 위젯
class SearchAndNavigationBarWidget extends StatelessWidget {
  bool isVisible;
  VoidCallback callBack;

  SearchAndNavigationBarWidget({
    super.key,
    this.isVisible = false,
    this.callBack = _defaultCallBack,
  });

  // default callback 함수
  static _defaultCallBack () {}

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(45),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                offset: Offset(1, 3),
              ),
            ],
          ),
          child: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(45),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  offset: Offset(1, 3),
                ),
              ],
            ),
            child: SearchTextFormFieldWidget(
              borderSide: BorderSide.none,
              callback: () {},
            ),
          ),
        ),
        isVisible?
        Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(45),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    offset: Offset(1, 3),
                  ),
                ],
              ),
              child: IconButton(
                onPressed: callBack,
                icon: const Icon(
                  Icons.menu,
                ),
              ),
            ),
          ],
        ):SizedBox(),

      ],
    );
  }
}
