import 'package:carousel_slider/carousel_slider.dart';
import 'package:ducksaeng_app/view/components/custom_bottom_navigation_bar.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ducksaeng_app/view/components/main_app_bar_widget.dart';
import 'package:ducksaeng_app/view/components/search_text_form_field_widget.dart';
import 'package:ducksaeng_app/viewModel/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
      child: Scaffold(
        appBar: MainAppBarWidget(),
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(90),
                            bottomRight: Radius.circular(90),
                          ),
                        ),
                        child: Column(
                          children: [

                            // 최애 사진 슬라이더
                            // todo: 최애 등록이 없는 경우 빈 칸 표출, 최애 사진 누르면 생일 리스트 조회 페이지로 이동
                            Expanded(
                              flex: 3,
                              child: CarouselSlider(
                                items: controller.imgWidget,
                                options: CarouselOptions(
                                  autoPlay: false,
                                  enlargeCenterPage: true,
                                  enableInfiniteScroll: false,
                                ),
                              ),
                            ),

                            const Expanded(
                              flex: 1,
                              child: SizedBox(),
                            ),
                          ],
                        )),
                  ),
                  const Expanded(
                    flex: 2,
                    child: SizedBox(),
                  ),
                ],
              ),

              Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [

                          // 아이돌 서치 필드
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 35.0),
                              child: SearchTextFormFieldWidget(
                                callback: () {},
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 2,
                    child: SizedBox(),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: const CustomButtomNavigationBar(),
      ),
    );
  }
}
