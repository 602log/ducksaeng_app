import 'package:ducksaeng_app/view/components/my_profile_menu_widget.dart';
import 'package:flutter/material.dart';

/// 내정보 background 위젯 (stack 배경)
class MyProfileBackgroundWidget extends StatelessWidget {
  const MyProfileBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // 프로필 사진
        Expanded(
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
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5,),
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
                    padding: const EdgeInsets.only(bottom: 5,),
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
                    padding: const EdgeInsets.only(bottom: 5,),
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

                  MyProfileMenuWidget(title: '저장한 생일카페', callback: (){},),
                  MyProfileMenuWidget(title: '저장한 생일광고', callback: (){},),
                  MyProfileMenuWidget(title: '내가 등록한 생일카페', callback: (){},),
                  MyProfileMenuWidget(title: '내가 등록한 생일광고', callback: (){},),
                  MyProfileMenuWidget(title: '탈퇴', callback: (){},),

                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
