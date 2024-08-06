import 'package:ducksaeng_app/view/components/bias_item_widget.dart';
import 'package:ducksaeng_app/view/components/custom_bottom_navigation_bar.dart';
import 'package:ducksaeng_app/view/components/search_and_navigation_bar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ducksaeng_app/viewModel/bias_controller.dart';
import 'package:get/get.dart';

/// 최애 리스트 화면
class BiasListScreen extends GetView<BiasController> {
  BiasListScreen();

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      // 글씨 크기 고정
      data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Column(
                children: [
                  SearchAndNavigationBarWidget(),
                  //
                  const SizedBox(
                    height: 25,
                  ),

                  // bias item contianer
                  Wrap(
                    spacing: 30,
                    runSpacing: 4,
                    children: controller.biasItems.map((e) {
                      return BiasItemWidget(name: e['name']!, url: e['url']!);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomButtomNavigationBar(),
      ),
    );
  }
}
