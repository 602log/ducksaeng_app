import 'package:flutter/material.dart';

/// 내정보 메뉴 위젯
class MyProfileMenuWidget extends StatelessWidget {
  VoidCallback callback;
  String title;
  Icon iconWidget;

  MyProfileMenuWidget({
    super.key,
    required this.callback,
    required this.title,
    required this.iconWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20,),
      child: InkWell(
        onTap: callback,
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      spreadRadius: 1,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        iconWidget,
                        SizedBox(width: 10,),
                        Text(
                          title,
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ],
                    ),

                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
