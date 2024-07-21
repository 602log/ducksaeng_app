import 'package:ducksaeng_app/view/components/search_text_form_field_widget.dart';
import 'package:ducksaeng_app/viewModel/event_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

/// 생일 카페 메인 화면
class EventScreen extends GetView<EventController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          Positioned(
            top: kToolbarHeight + 16,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(45),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5,
                            offset: Offset(1, 3))
                      ]),
                  child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(45),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5,
                            offset: Offset(1, 3),
                          )
                        ]),
                    child: SearchTextFormFieldWidget(
                      borderSide: BorderSide.none,
                      callback: () {},
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(45),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(1, 3),
                        )
                      ]),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: kToolbarHeight - 20,
            right: 16,
            left: 16,
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      offset: Offset(0, 3),
                    )
                  ]),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
                      fit: BoxFit.cover,
                      width: 120,
                      height: 120,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '츠키나가 레오',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    '천재작곡가 레오의 연습실',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    '2024/10/17',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
