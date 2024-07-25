import 'package:flutter/material.dart';

/// 최애 아이템 위젯
class BiasItemWidget extends StatelessWidget {
  String name;
  String url;

  BiasItemWidget({
    super.key,
    required this.name,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        children: [
           Stack(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  url,
                ),
                child: const Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(
                    Icons.favorite,
                    size: 20,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          Text(
            name,
            style: Theme.of(context).textTheme.bodyMedium,
            overflow: TextOverflow.fade,
          ),
        ],
      ),
    );
  }
}
