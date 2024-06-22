import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unisex/controllers/shopview_con.dart';

class ServiceChip extends GetView<ShopViewCon> {
  const ServiceChip(
      {required this.text,
      required this.onSelected,
      required this.filterMale,
      super.key});

  final String text;
  final void Function() onSelected;
  final RxBool filterMale;

  @override
  Widget build(BuildContext context) {
    // return FilterChip(
    //   label: Text(text),
    //   backgroundColor: Colors.transparent,
    //   labelPadding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
    //   showCheckmark: false,
    //   labelStyle: Theme.of(context).textTheme.displaySmall?.copyWith(color: Colors.black),
    //   side: BorderSide(
    //     color: Theme.of(context).primaryColor,
    //     strokeAlign: StrokeAlign.center
    //   ),
    //   onSelected: (isSelected) => controller.filter(isSelected, text[0]),
    // );
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: GestureDetector(
        onTap: onSelected,
        child: Obx(
          () => Container(
            alignment: Alignment.center,
            width: 80.0,
            height: 27.0,
            decoration: BoxDecoration(
              border: controller.filterMale.value
                  ? Border.all(
                      color: Theme.of(context).primaryColor,
                      strokeAlign: StrokeAlign.center)
                  : const Border.fromBorderSide(
                      BorderSide(style: BorderStyle.none, width: 0.0)),
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Text(text),
          ),
        ),
      ),
    );
  }
}
