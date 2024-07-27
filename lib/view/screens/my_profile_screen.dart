import 'package:ducksaeng_app/view/components/custom_bottom_navigation_bar.dart';
import 'package:ducksaeng_app/view/components/my_profile_background_widget.dart';
import 'package:ducksaeng_app/view/components/my_profile_update_modal_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ducksaeng_app/viewModel/my_profile_controller.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class MyProfileScreen extends GetView<MyProfileController> {
  MyProfileScreen();

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            children: [
              MyProfileBackgroundWidget(),
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
        bottomNavigationBar: CustomButtomNavigationBar()
      ),
    );
  }
}
