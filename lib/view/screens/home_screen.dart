import 'package:ducksaeng_app/routes/app_routes.dart';
import 'package:ducksaeng_app/view/components/custom_tabs.dart';
import 'package:ducksaeng_app/view/components/main_app_bar.dart';
import 'package:ducksaeng_app/view/components/search_text_form_field.dart';
import 'package:ducksaeng_app/viewModel/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: MainAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 16,
            ),

            // 검색 text form field
            SearchTextFormField(
              callback: () {},
            ),

            const SizedBox(
              height: 16,
            ),

            Expanded(
              child: CustomTabs(tabLength: 2, tabColorList: [Colors.grey.shade100, Colors.grey.shade300], tabTitleList: controller.tabs, widgetList: [],

              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        // decoration: const BoxDecoration(
        //   color: Colors.grey
        // ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          height: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                )
              ]),
          child: const Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.home,
                color: Colors.black,
              ),
              Icon(
                Icons.home,
                color: Colors.black,
              ),
              Icon(
                Icons.home,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
