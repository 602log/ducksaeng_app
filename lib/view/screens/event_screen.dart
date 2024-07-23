import 'package:ducksaeng_app/routes/app_routes.dart';
import 'package:ducksaeng_app/view/components/event_map_bottom_item.dart';
import 'package:ducksaeng_app/view/components/search_and_navigation_bar_widget.dart';
import 'package:ducksaeng_app/viewModel/event_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

/// 생일 카페 지도 화면
class EventScreen extends GetView<EventController> {

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
      child: Scaffold(
        body: Stack(
          children: [
      
            // 지도
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
            ),
      
            // 상단바
            Positioned(
              top: kToolbarHeight,
              left: 16,
              right: 16,
              child: SearchAndNavigationBarWidget(isVisible: true, callBack: (){
                Get.toNamed(Routes.EVENT_LIST);
              },),
            ),
      
            // 생일 카페 이벤트 간략 내용 카드
            const Positioned(
              bottom: kToolbarHeight - 20,
              right: 16,
              left: 16,
              child: EventMapBottomItem(),
            )
          ],
        ),
      ),
    );
  }
}
