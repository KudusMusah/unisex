import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unisex/controllers/selected_services_con.dart';
import 'package:unisex/pages/selected_services/servicetype_widget.dart';
import 'package:unisex/pages/shared/service_card.dart';

class SelectedServicesScreen extends GetView<SelectedServicesCon> {
  const SelectedServicesScreen({super.key});

  static const String routeName = '/select';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        automaticallyImplyLeading: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Selected Services',
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 60.0),
            child: controller.services.isNotEmpty
                ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.services.length,
                    itemBuilder: (context, index) {
                      return ServiceCard(
                        onPressed: () {},
                        service: controller.services[index],
                        isSSPage: true,
                      );
                    },
                  )
                : Column(
            children: [
              Image.asset(
                  'assets/images/location unavailable.png',
                  fit: BoxFit.contain,
                ),
                Text('\nNo Booked Services',
                style: Theme.of(context).textTheme.displaySmall?.copyWith(color: Colors.black),)
            ],
          ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Obx(
                () => ServiceType(
                  text: 'HOME SERVICE',
                  price: controller.price.value == 0.0
                      ? controller.price.value
                      : controller.price.value + 40.0,
                  onPressed: () => controller.bookHome(),
                ),
              ),
              Obx(
                () => ServiceType(
                  text: 'SHOP APPOINTMENT',
                  price: controller.price.value,
                  onPressed: () => controller.bookShop(),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
