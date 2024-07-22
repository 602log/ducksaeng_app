import 'package:ducksaeng_app/view/components/event_list_item_widget.dart';
import 'package:ducksaeng_app/view/components/search_and_navigation_bar_widget.dart';
import 'package:ducksaeng_app/view/components/search_text_form_field_widget.dart';
import 'package:ducksaeng_app/viewModel/event_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

/// 생일 카페 리스트 화면
class EventListScreen extends GetView<EventController> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      // 글씨 크기 고정
      data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Column(
              children: [

                SearchAndNavigationBarWidget(),

                SizedBox(
                  height: 25,
                ),

                // item card
                Expanded(
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return EventListItemWidget();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
