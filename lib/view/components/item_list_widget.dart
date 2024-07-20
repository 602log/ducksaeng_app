import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ItemListWidget extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 50,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Text(
            'index',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      );
    },);
  }

}