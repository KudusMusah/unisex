import 'package:flutter/material.dart';

import '../../pages/shared/materialbutton.dart';

class ServiceType extends StatelessWidget {
  const ServiceType(
      {super.key,
      required this.text,
      required this.price,
      required this.onPressed});

  final String text;
  final double price;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/3,
      // height: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.0),
        border: Border.all(
          color: Theme.of(context).primaryColor,
          strokeAlign: StrokeAlign.center,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                  text: text,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(color: Colors.black),
                  children: [
                    TextSpan(
                        text: '\nGhc $price',
                        style: Theme.of(context).textTheme.displayMedium)
                  ]),
            ),
          ),
          Button(
              buttonText: 'Book now',
              onPressed: onPressed,
              setWidth: true,
              radius: 14.0,
              width: double.infinity),
        ],
      ),
    );
  }
}
