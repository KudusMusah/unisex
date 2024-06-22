import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({Key? key, required this.labelText, required this.txtEdCon}) : super(key: key);

  final String labelText;
  final TextEditingController txtEdCon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtEdCon,
      style: Theme.of(context).textTheme.labelSmall,
      decoration: InputDecoration(
        constraints: const BoxConstraints.expand(height: 40.0),
        hintStyle: Theme.of(context).textTheme.labelSmall,
        hintText: labelText),
    );
  }
}
