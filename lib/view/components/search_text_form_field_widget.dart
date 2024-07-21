import 'package:ducksaeng_app/viewModel/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

/// 검색 조회 form field
/// callback : IconButton onPressed
class SearchTextFormFieldWidget extends GetWidget<HomeController> {

  VoidCallback callback;

  SearchTextFormFieldWidget({
    super.key,
    required this.callback,
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
        // icon: const Icon(Icons.search,),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),
          ),
            borderSide: BorderSide(
              width: 1.5,
            ),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),
          ),
          borderSide: BorderSide(
            width: 1.5,
          ),
        ),

        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ),
            borderSide: BorderSide(
              width: 1.5,
            ),
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
