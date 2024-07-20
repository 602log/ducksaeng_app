import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

///   [tabLength] : tab lenght
///   [callback] : tab onTap
///   [tabColorList] : tab background color list
///   [currentIndex] : current tab index
///   [tabTitleList] : tab title List
class CustomTabs extends GetWidget {
  int tabLength;
  List<Color> tabColorList;
  RxInt currentIndex = 0.obs;
  List<String> tabTitleList;
  List<Widget> widgetList;

  CustomTabs({
    super.key,
    required this.tabLength,
    required this.tabColorList,
    required this.tabTitleList,
    required this.widgetList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // tabs
        Expanded(
          flex: 1,
          child: SizedBox(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tabLength,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    currentIndex.value = index;
                  },
                  child: Obx(
                    () => Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: currentIndex.value == index ? 25 : 20,
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
                              fontSize: currentIndex.value == index ? 16 : 13,
                              fontWeight: currentIndex.value == index
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
        ),

        // 지도 / 리스트 보기
        Expanded(
            flex: 15,
            child: Row(
              children: [
                currentIndex.value == 0
                    ? Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                          ),
                          child: Container(
                            child: const Text(
                              'dd',
                            ),
                          ),
                        ),
                      )
                    : Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                          ),
                          child: Container(
                            child: Card(
                              color: Colors.white,
                              child: Text('dd'),
                            ),
                          ),
                        ),
                      )
              ],
            )),
      ],
    );
  }
}
