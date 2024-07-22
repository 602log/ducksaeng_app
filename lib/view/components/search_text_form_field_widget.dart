import 'package:ducksaeng_app/viewModel/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

/// 검색 조회 form field 위젯
/// callback : IconButton onPressed
class SearchTextFormFieldWidget extends GetWidget<HomeController> {

  VoidCallback callback;
  BorderSide borderSide;

  SearchTextFormFieldWidget({
    super.key,
    required this.callback,
    this.borderSide = const BorderSide(width: 1.5),
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.bodyMedium,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        contentPadding: const EdgeInsets.all(15),
        labelText: '검색',
        labelStyle: Theme.of(context).textTheme.bodyMedium,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),
          ),
            borderSide: borderSide,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),
          ),
          borderSide: borderSide,
        ),

        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ),
          borderSide: borderSide,
        ),
        suffixIcon: IconButton(
          onPressed: callback,
          icon: const Icon(
            Icons.search,
          ),
          color: Colors.black,
        ),
      ),
    );
  }
}
