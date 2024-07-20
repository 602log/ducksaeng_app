import 'package:ducksaeng_app/viewModel/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class MapContainerWiget extends GetWidget<HomeController> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.red,
      ),
      child: const Text(
         '지도',
      ),
    );
  }

}