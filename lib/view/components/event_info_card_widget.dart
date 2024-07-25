import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

/// 이벤트 정보 카드 위젯
class EventInfoCardWidget extends StatelessWidget {
  const EventInfoCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // center container
          Stack(
            children: [
              Container(
                padding: EdgeInsets.zero,
                // 럭키드로우
                decoration: const BoxDecoration(
                  color: Colors.yellow,
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
                child: Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(right: 10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
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
                      const SizedBox(
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
                                    padding: const EdgeInsets.all(5),
                                    decoration: const BoxDecoration(
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
