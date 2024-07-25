import 'package:ducksaeng_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// 지도 화면 하단 카드 위젯
class EventMapBottomItem extends StatelessWidget {
  const EventMapBottomItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.EVENT_DETAIL);
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 3,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.bookmark_border,
                    size: 20,
                  ),
                  style: const ButtonStyle(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
              ],
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(100),
              ),
              child: Image.network(
                'https://pbs.twimg.com/media/FY-7c5kUUAEItMl?format=jpg&name=large',
                fit: BoxFit.cover,
                width: 120,
                height: 120,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              '츠키나가 레오',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '천재작곡가 레오의 연습실',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),

                const SizedBox(
                  width: 5,
                ),

                const CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.yellow,
                  child: Icon(Icons.check, size: 10,),
                ),
              ],
            ),
            Text(
              '2024/10/17',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
