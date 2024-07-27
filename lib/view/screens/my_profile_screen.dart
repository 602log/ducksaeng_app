import 'package:ducksaeng_app/view/components/custom_bottom_navigation_bar.dart';
import 'package:ducksaeng_app/view/components/my_profile_background_widget.dart';
import 'package:ducksaeng_app/view/components/my_profile_menu_widget.dart';
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
        body: SafeArea(
          child: Stack(
            children: [
          
              MyProfileBackgroundWidget(),
          
              Column(
                children: [
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(1, 0),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                offset: Offset(0, 3),
                              )
                            ],
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.edit,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          
              // 상단바 뒤로가기
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,),
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

        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
          ),
          child: const CustomButtomNavigationBar(),
        ),
      ),
    );
  }
}
