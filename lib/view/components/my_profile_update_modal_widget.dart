import 'package:ducksaeng_app/viewModel/my_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// 내정보 수정 모달 위젯
class MyProfileUpdateModalWidget extends GetView<MyProfileController> {
  const MyProfileUpdateModalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
      child: Dialog(
        backgroundColor: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30),),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                style: Theme.of(context).textTheme.bodyMedium,
                controller: controller.nickNameController,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  fillColor: Colors.white,
                  labelText: '오타쿠잖슴',
                  labelStyle: Theme.of(context).textTheme.bodyMedium,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(width: 1),
                  ),
                  focusColor: Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                style: Theme.of(context).textTheme.bodyMedium,
                controller: controller.SNSAccount,
                decoration: InputDecoration(
                  prefixText: '@',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  fillColor: Colors.white,
                  labelText: '@otaku',
                  labelStyle: Theme.of(context).textTheme.bodyMedium,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(width: 1),
                  ),
                  focusColor: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  '수정하기',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
