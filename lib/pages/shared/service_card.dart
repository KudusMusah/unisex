import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unisex/utils/saloon_service.dart';

import '../../pages/shared/materialbutton.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard(
      {super.key,
      required this.service,
      required this.onPressed,
      this.isSSPage = false});

  final SaloonService service;
  final void Function() onPressed;
  final bool isSSPage;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              service.name,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Row(
                mainAxisAlignment: isSSPage
                    ? MainAxisAlignment.spaceBetween
                    : MainAxisAlignment.start,
                children: [
                  Text(
                    '${service.time}mins',
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(color: Colors.black54),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: (Get.width / 4)),
                    child: !isSSPage
                        ? Text(
                            'Ghc${service.price}',
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(color: Colors.black),
                          )
                        : Container(),
                  ),
                ],
              ),
            )
          ],
        ),
        trailing: isSSPage
            ? SizedBox(
              width: 75.0,
              child: Text(
                  'Ghc${service.price}',
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(color: Colors.black),
                ),
            )
            : Button(
                buttonText: "Book\nService",
                setWidth: true,
                onPressed: onPressed),
      ),
    );
  }
}
