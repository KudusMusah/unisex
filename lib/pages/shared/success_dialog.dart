import 'package:flutter/material.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.0,
      height: 250.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40.0,
            height: 40.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff28c61a),            
            ),
            child: const Icon(Icons.check),
          ),
          Text('\nSuccessful',
          style: Theme.of(context).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.w500, fontSize: 16.0),
          )
        ],
      ),
    );
  }
}