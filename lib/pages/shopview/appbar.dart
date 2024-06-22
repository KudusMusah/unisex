import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unisex/controllers/shopview_con.dart';

class ViewAppBar extends GetView<ShopViewCon> {
  const ViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.of(context).pop(),
          ),
          Text(
            controller.saloon.location,
            style: Theme.of(context).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w600, color: Colors.grey),
          ),
          IconButton(
              onPressed: () => controller.book(),
              icon: const Icon(Icons.phone_android_outlined))
        ],
      ),
    );
  }
}
