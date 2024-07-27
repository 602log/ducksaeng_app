import 'package:ducksaeng_app/view/components/custom_bottom_navigation_bar.dart';
import 'package:ducksaeng_app/view/components/my_event_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:ducksaeng_app/viewModel/my_event_controller.dart';
import 'package:get/get.dart';

/// 내가 등록한 생일카페 리스트 화면
class MyEventListScreen extends GetView<MyEventController> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.grey.shade200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(30),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              border: Border.all(
                                width: 1,
                                color: Colors.black54,
                              ),
                              color: Colors.transparent,
                            ),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.black54,
                                  ),),
                              child: Icon(
                                Icons.add,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      color: Colors.white,
                      child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return MyEventItemWidget();
                          }),
                    ),
                  ),
                ],
              ),

              // 상단바 뒤로가기
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 10,),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(45),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4,
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
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomButtomNavigationBar(),
      ),
    );
  }
}
