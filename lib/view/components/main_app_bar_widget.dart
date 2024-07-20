import 'package:ducksaeng_app/routes/app_routes.dart';
import 'package:ducksaeng_app/viewModel/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// custom app bar (main 용)
class MainAppBarWidget extends GetWidget<HomeController> {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        // 로고 버튼
        InkWell(
          onTap: () {
            Get.offAllNamed(Routes.HOME);
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'DUCKSAENG',
                style: Theme.of(context).textTheme.titleLarge,
              ),

              const SizedBox(width: 3,),

              Text(
                '덕생',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ),

        Row(
          children: [

            // 알림 아이콘 버튼
            IconButton(
              padding: EdgeInsets.zero,
              alignment: Alignment.centerRight,
              onPressed: () {

              },
              icon: const Icon(
                Icons.notifications,
              ),
            ),

            // 내 프로필 아이콘 버튼
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {

              },
              icon: const Icon(
                Icons.account_circle_outlined,
              ),
            ),
          ],
        ),
      ],
    );
  }

}