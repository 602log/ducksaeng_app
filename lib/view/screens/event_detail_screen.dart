import 'package:ducksaeng_app/view/components/custom_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

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
                  child: Container(
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
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    padding: EdgeInsets.all(16),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 100,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 5,
                                            offset: Offset(0, 2)
                                          )
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(100),
                                            ),
                                            child: Image.network(
                                              'https://search.pstatic.net/sunny/?src=http%3A%2F%2Ffile3.instiz.net%2Fdata%2Fcached_img%2Fupload%2F2019%2F05%2F20%2F0%2F1c5716af0866ad9bed3d87e5f7664867.jpg&type=a340',
                                              fit: BoxFit.cover,
                                              height: 80,
                                              width: 80,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '츠키나가 레오',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleMedium,
                                                  ),
                                                  Text(
                                                    '앙상블 스타즈!',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium,
                                                  ),
                                                ],
                                              ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'rt 해주시는 분들께 이벤트가 끝난 후 전체 특전 포함 소정의 선물을 보내드립니다!',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text('@아이디', style: Theme.of(context).textTheme.bodyMedium,),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // center container
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            '천재작곡가 레오의 연습실',
                            style: Theme.of(context).textTheme.bodyLarge,
                            overflow: TextOverflow.fade,

                          ),
                        ),
                        Text(
                          '논스케일드 갤러리',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          '2024/10/17 ~ 2024/10/23',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          '9:00 ~ 20:00',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          '서울시 마포구 월드컵로 51, B1',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Wrap(
                            spacing: 4,
                            runSpacing: 4,
                            children: List.generate(
                              3,
                              (index) {
                                return IntrinsicWidth(
                                  child: Center(
                                    child: Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        color: Colors.lime,
                                      ),
                                      child: Text(
                                        '디자인컵',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

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
                      onPressed: () {

                      },
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
          child: CustomButtomNavigationBar(),
        ),
      ),
    );
  }
}
