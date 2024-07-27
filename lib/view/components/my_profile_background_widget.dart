import 'package:ducksaeng_app/view/components/my_profile_menu_widget.dart';
import 'package:ducksaeng_app/view/components/my_profile_update_modal_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// 내정보 background 위젯 (stack 배경)
class MyProfileBackgroundWidget extends StatelessWidget {
  const MyProfileBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // 프로필 사진
            Expanded(
              child: Stack(
                children: [
                  InkWell(
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://i.pinimg.com/564x/7d/0c/95/7d0c9577c1299b033b7d8f85f48d3506.jpg',
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Color(0x55C0C0C0),
                          child: Center(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  width: 1,
                                ),
                              ),
                              child: Icon(
                                Icons.camera_alt_outlined,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
              ),
            ),
          ],
        ),



        Positioned(
          height: MediaQuery.of(context).size.height * 0.5,
          bottom: 0,
          left: 0,
          right: 0,
          child: Stack(
            clipBehavior: Clip.none,
            children: [

              SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 5,
                        ),
                        child: Row(
                          children: [
                            Text(
                              '오타쿠잖슴',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 5,
                        ),
                        child: Row(
                          children: [
                            Text(
                              'otaku@naver.com',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 5,
                        ),
                        child: Row(
                          children: [
                            Text(
                              '@otaku',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                      MyProfileMenuWidget(
                        title: '저장한 생일카페',
                        callback: () {},
                      ),
                      MyProfileMenuWidget(
                        title: '저장한 생일광고',
                        callback: () {},
                      ),
                      MyProfileMenuWidget(
                        title: '내가 등록한 생일카페',
                        callback: () {},
                      ),
                      MyProfileMenuWidget(
                        title: '내가 등록한 생일광고',
                        callback: () {},
                      ),
                      MyProfileMenuWidget(
                        title: '탈퇴',
                        callback: () {},
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                child: Positioned(
                  top: -20,
                  right: 40,
                  child: Row(
                    children: [
                      Container(
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
                        child: IconButton(
                          style: const ButtonStyle(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return MyProfileUpdateModalWidget();
                                });
                          },
                          icon: Icon(Icons.edit),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
