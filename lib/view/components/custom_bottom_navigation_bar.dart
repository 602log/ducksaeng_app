import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

/// bottom navigation bar
class CustomButtomNavigationBar extends StatelessWidget {
  const CustomButtomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}