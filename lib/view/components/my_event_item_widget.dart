import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/// 내가 등록한 이벤트 리스트 위젯
class MyEventItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: () {

        },
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(
                15,
              ),
            ),
            boxShadow: [
              BoxShadow(
                  blurRadius: 10, color: Colors.grey, offset: Offset(0, 10))
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 4,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
                    fit: BoxFit.cover,
                    height: 130,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 6,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '츠키나가레오',
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
                    Text(
                      '서울시 마포구',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Wrap(
                      spacing: 4.0,
                      // 간격
                      runSpacing: 5.0,
                      // 줄간격
                      direction: Axis.horizontal,
                      // 나열 방향
                      alignment: WrapAlignment.start,
                      children: List.generate(
                        6,
                            (index) {
                          return IntrinsicWidth(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 3,
                                horizontal: 5,
                              ),
                              decoration: const BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(7),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '탁상 액자',
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.edit,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
