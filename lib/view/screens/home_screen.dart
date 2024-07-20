import 'package:ducksaeng_app/view/components/item_list_widget.dart';
import 'package:ducksaeng_app/view/components/map_container_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ducksaeng_app/view/components/custom_tabs_widget.dart';
import 'package:ducksaeng_app/view/components/main_app_bar_widget.dart';
import 'package:ducksaeng_app/view/components/search_text_form_field_widget.dart';
import 'package:ducksaeng_app/viewModel/home_controller.dart';


class HomeScreen extends GetView<HomeController> {
  HomeScreen({super.key});

  var tabColorList = [Colors.grey.shade100, Colors.grey.shade300];
  var tabTitleList = ['지도보기', '리스트'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MainAppBarWidget(),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: true,
            child: Padding(
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
                  SearchTextFormFieldWidget(
                    callback: () {},
                  ),

                  const SizedBox(
                    height: 16,
                  ),

                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow
                      ),
                      child: ListView.builder(

                        itemCount: 50,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10,),
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.black,
                              ),
                              child: Text(
                                'index',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          );
                        },),
                    ),
                  ),

                  // Expanded(
                  //   child: CustomTabsWidget(
                  //     tabLength: 2,
                  //     tabColorList: [Colors.grey.shade100, Colors.grey.shade300],
                  //     tabTitleList: controller.tabs,
                  //     widgetList: [
                  //       MapContainerWiget(),
                  //     ListView.builder(
                  //
                  //       itemCount: 50,
                  //       itemBuilder: (context, index) {
                  //         return Padding(
                  //           padding: const EdgeInsets.symmetric(vertical: 10,),
                  //           child: Container(
                  //             height: 100,
                  //             decoration: BoxDecoration(
                  //               color: Colors.black,
                  //             ),
                  //             child: Text(
                  //               'index',
                  //               style: TextStyle(
                  //                 color: Colors.white,
                  //               ),
                  //             ),
                  //           ),
                  //         );
                  //       },),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          )
        ],
      ),

      // SingleChildScrollView(
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(
      //       horizontal: 16,
      //     ),
      //     child: Column(
      //       mainAxisSize: MainAxisSize.min,
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //
      //         const SizedBox(
      //           height: 16,
      //         ),
      //
      //         // 검색 text form field
      //         SearchTextFormFieldWidget(
      //           callback: () {},
      //         ),
      //
      //         const SizedBox(
      //           height: 16,
      //         ),
      //
      //         ListView.builder(
      //           shrinkWrap: true,
      //           scrollDirection: Axis.horizontal,
      //           itemCount: 2,
      //           // physics: BouncingScrollPhysics(),
      //           itemBuilder: (context, index) {
      //             return GestureDetector(
      //               onTap: () {
      //                 controller.current.value = index;
      //               },
      //               child: Obx(
      //                     () => Container(
      //                   padding: EdgeInsets.symmetric(
      //                     horizontal: controller.current.value == index ? 25 : 20,
      //                   ),
      //                   decoration: BoxDecoration(
      //                       color: tabColorList[index],
      //                       borderRadius: const BorderRadius.only(
      //                         topRight: Radius.circular(20),
      //                         topLeft: Radius.circular(20),
      //                       )),
      //                   child: Row(
      //                     children: [
      //                       Text(
      //                         style: TextStyle(
      //                           fontSize:
      //                           controller.current.value == index ? 16 : 13,
      //                           fontWeight: controller.current.value == index
      //                               ? FontWeight.w400
      //                               : FontWeight.w200,
      //                         ),
      //                         tabTitleList[index],
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //               ),
      //             );
      //           },
      //         ),
      //
      //
      //  
      //  
      //         // Expanded(
      //         //   child: CustomTabsWidget(
      //         //     tabLength: 2,
      //         //     tabColorList: [Colors.grey.shade100, Colors.grey.shade300],
      //         //     tabTitleList: controller.tabs,
      //         //     widgetList: [
      //         //       MapContainerWiget(),
      //         //       MapContainerWiget(),
      //         //     ],
      //         //   ),
      //         // ),
      //       ],
      //     ),
      //   ),
      // ),
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
