import 'package:ducksaeng_app/viewModel/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class CustomTabsWidget extends GetWidget<HomeController> {
  int tabLength;
  List<Color> tabColorList;
  List<String> tabTitleList;
  List<Widget> widgetList;

  CustomTabsWidget({
    super.key,
    required this.tabLength,
    required this.tabColorList,
    required this.tabTitleList,
    required this.widgetList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // tabs
        Expanded(
          flex: 1,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: tabLength,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  controller.current.value = index;
                },
                child: Obx(
                  () => Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: controller.current.value == index ? 25 : 20,
                    ),
                    decoration: BoxDecoration(
                        color: tabColorList[index],
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        )),
                    child: Row(
                      children: [
                        Text(
                          style: TextStyle(
                            fontSize:
                                controller.current.value == index ? 16 : 13,
                            fontWeight: controller.current.value == index
                                ? FontWeight.w400
                                : FontWeight.w200,
                          ),
                          tabTitleList[index],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),

        // 지도 / 리스트 보기
        Expanded(
          flex: 10,
          child: Obx(
            () {
              return Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: tabColorList[controller.current.value],
                ),
                child: widgetList[controller.current.value],
              );
            },
          ),
        ),
      ],
    );
  }
}
