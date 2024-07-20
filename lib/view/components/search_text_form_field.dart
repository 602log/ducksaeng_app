import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

/// 검색 조회 form field
/// callback : IconButton onPressed
class SearchTextFormField extends GetWidget {

  VoidCallback callback;

  SearchTextFormField({
    super.key,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.bodyMedium,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(15),
        labelText: '검색',
        labelStyle: Theme.of(context).textTheme.bodyMedium,
        // icon: const Icon(Icons.search,),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
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
