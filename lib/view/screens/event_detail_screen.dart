import 'package:ducksaeng_app/view/components/custom_bottom_navigation_bar.dart';
import 'package:ducksaeng_app/view/components/event_description_widget.dart';
import 'package:ducksaeng_app/view/components/event_info_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

/// 이벤트 상세 내용 화면
class EventDetailScreen extends StatelessWidget {
  const EventDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(
      initialPage: 0,
    );
    ScrollController scrollController = ScrollController();

    // todo: 추후 삭제 예정
    List<String> imgList = [
      'https://i.pinimg.com/564x/7d/0c/95/7d0c9577c1299b033b7d8f85f48d3506.jpg',
      'https://i.pinimg.com/564x/7d/b4/5c/7db45c9d5ab25ab80197c8fbf6412d85.jpg',
      'https://i.pinimg.com/564x/6f/4c/d5/6f4cd57aa4b0c1e692de04da5a4262c7.jpg',
      'https://i.pinimg.com/564x/d9/e5/4a/d9e54aed0cb71ba3d88e6b32e0753a6c.jpg',
      'https://i.pinimg.com/564x/3f/a9/99/3fa9994bd34166649d3676246dcc296d.jpg',
    ];

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  // flex: 3,
                  child: PageView(
                    controller: pageController,
                    children: imgList
                        .map(
                          (e) => Image.network(
                            e,
                            fit: BoxFit.contain,
                          ),
                        )
                        .toList(),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: const SingleChildScrollView(

                        // 이벤트 상세 내용 위젯
                        child: EventDescriptionWidget()),
                  ),
                ),
              ],
            ),

            // 이벤트 정보 카드 위젯
            const EventInfoCardWidget(),

            Positioned(
              top: kToolbarHeight,
              left: 16,
              right: 16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_border,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
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
