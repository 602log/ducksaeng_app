import 'package:ducksaeng_app/viewModel/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Text(
                'DUCKSAENG',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 16,
            ),

            TextFormField(
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
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                  ),
                  color: Colors.black,
                ),
              ),
            ),

            const SizedBox(
              height: 16,
            ),

            // tabs
            Expanded(
              flex: 1,
              child: SizedBox(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.tabs.value.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        controller.current.value = index;
                      },
                      child: Obx(
                        () => Container(
                          padding: EdgeInsets.symmetric(
                            horizontal:
                                controller.current.value == index ? 25 : 20,
                          ),
                          decoration: BoxDecoration(
                              color: index == 0
                                  ? Colors.grey.shade100
                                  : Colors.grey.shade300,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                              )),
                          child: Row(
                            children: [
                              Text(
                                style: TextStyle(
                                  // color: Colors.black,
                                  fontSize: controller.current.value == index
                                      ? 16
                                      : 13,
                                  fontWeight: controller.current.value == index
                                      ? FontWeight.w400
                                      : FontWeight.w200,
                                ),
                                controller.tabs[index],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            // 지도 / 리스트 보기
            Expanded(
              flex: 15,
              child: Obx(
                () {
                  return Row(
                    children: [
                      controller.current.value == 0
                          ? Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                height: size.height,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                ),
                                child: Container(
                                  // decoration: const BoxDecoration(
                                  //   color: Colors.black,
                                  // ),
                                  child: const Text(
                                    'dd',
                                  ),
                                ),
                              ),
                            )
                          : Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                height: size.height,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                ),
                                child: Container(
                                  child: Card(
                                    color: Colors.white,
                                    child: Text('dd'),
                                  ),
                                ),
                              ),
                            )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        // decoration: const BoxDecoration(
        //   color: Colors.grey
        // ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          height: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                )
              ]),
          child: const Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.home,
                color: Colors.black,
              ),
              Icon(
                Icons.home,
                color: Colors.black,
              ),
              Icon(
                Icons.home,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
