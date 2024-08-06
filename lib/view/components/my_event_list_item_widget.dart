import 'package:ducksaeng_app/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// 내가 등록한 이벤트 리스트 위젯
class MyEventListItemWidget extends StatelessWidget {
  const MyEventListItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.MODIFY_EVENT);
      },
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 5,),
            height: 300,
            width: 180,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 3),
                  blurRadius: 3,
                )
              ],
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://i.pinimg.com/564x/dc/0f/ea/dc0fea4479e1380adbdda007553452d3.jpg',
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  Container(
                    width: 170,
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '츠키나가레오',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        Text(
                          '천재작곡가 레오의 연습실',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        Text(
                          '2024/10/17',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        Text(
                          '서울시 마포구',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ],
                    ),
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
