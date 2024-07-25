import 'package:ducksaeng_app/routes/app_routes.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// todo: 이모티콘, 글씨, 동그라미+이모티콘, 이모티콘+글씨 중 선택
// todo: 선택한 메뉴 다른 색으로 활성화 표기할 것
/// bottom navigation bar
class CustomButtomNavigationBar extends StatelessWidget {
  const CustomButtomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child:
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          // 아이콘 + 글씨
          InkWell(
            onTap: (){
              Get.toNamed(Routes.HOME);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                Text(
                  '홈',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Get.toNamed(Routes.EVENT);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.cake,
                  color: Colors.black,
                ),
                Text(
                  '생일카페',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Get.toNamed(Routes.EVENT);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.smart_button,
                  color: Colors.black,
                ),
                Text(
                  '생일광고',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              Text(
                '최애',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
