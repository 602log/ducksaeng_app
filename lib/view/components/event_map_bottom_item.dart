import 'package:flutter/material.dart';

/// 지도 화면 하단 카드 위젯
class EventMapBottomItem extends StatelessWidget {
  const EventMapBottomItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print('상세 페이지 이동');
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
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(100),
              ),
              child: Image.network(
                'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
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
            Text(
              '천재작곡가 레오의 연습실',
              style: Theme.of(context).textTheme.bodyMedium,
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
