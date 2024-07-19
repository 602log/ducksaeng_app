import 'package:ducksaeng_app/viewModel/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              'DUCKSAENG',
              style: TextStyle(
                color: Color(0xff0802A3),
                fontSize: 24,
                fontFamily: 'NotoSansKR',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 10, bottom: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.tabs.value.length,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            print('클릭');
                            print(
                                'current : ${controller.current.value}, index : ${index}');
                            controller.current.value = index;
                            print(
                                'current : ${controller.current.value}, index : ${index}');
                          },
                          child: Obx(
                            () => Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                  color: index == 0
                                      ? const Color(0xffCAF4FF)
                                      : const Color(0xffFFF9D0),
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                  )),
                              child: Row(
                                children: [
                                  Text(
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          controller.current.value == index
                                              ? 16
                                              : 13,
                                      fontWeight:
                                          controller.current.value == index
                                              ? FontWeight.w400
                                              : FontWeight.w200,
                                    ),
                                    controller.tabs[index],
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
                Expanded(
                  flex: 15,
                  child: SizedBox(
                    child: ListView.builder(
                        itemCount: controller.tabs.value.length,
                        itemBuilder: (context, index) {
                        return Obx(() {
                          return Container(
                              padding: EdgeInsets.all(16),
                              height: size.height,
                              decoration: BoxDecoration(
                                color: controller.current.value == 0
                                    ? const Color(0xffCAF4FF)
                                    : const Color(0xffFFF9D0),
                              ),
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                ),
                                child: const Text(
                                  'dd',
                                ),
                              ));
                        });
                    }),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  // color: Color(0xff92C7CF),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    )
                  ]),
              child: const Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.home,
                  ),
                  Icon(
                    Icons.home,
                  ),
                  Icon(
                    Icons.home,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
