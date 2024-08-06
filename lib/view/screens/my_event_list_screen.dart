import 'package:ducksaeng_app/view/components/my_event_list_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../viewModel/my_event_controller.dart';
import '../components/custom_bottom_navigation_bar.dart';
import '../components/search_and_navigation_bar_widget.dart';

/// 내가 등록한 생일카페 리스트 화면
class MyEventListScreen extends GetView<MyEventController> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: SearchAndNavigationBarWidget(),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Align(
                    alignment: Alignment.center,
                    child: Wrap(
                      spacing: 20,
                      runSpacing: 15,
                      children: List.generate(15, (index) {
                        return MyEventListItemWidget();
                      }),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 10,
                ),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
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
                        Icons.add,
                      ),
                    ),
                  ),
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
