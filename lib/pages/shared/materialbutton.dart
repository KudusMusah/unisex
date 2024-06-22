import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.buttonText,
      required this.onPressed,
      this.radius = 6.0,
      this.width = 24.0,
      this.setWidth = false});
  final String buttonText;
  final bool setWidth;
  final double width;
  final double radius;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(setWidth ? radius : 5.0)
      ),
      elevation: 0.0,
      minWidth: setWidth ? width: double.infinity,
      color: Theme.of(context).backgroundColor,
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: setWidth
            ? Theme.of(context).textTheme.displaySmall
            : Theme.of(context).textTheme.labelMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}
