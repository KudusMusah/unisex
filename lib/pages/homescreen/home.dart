import 'package:flutter/material.dart';

import '../../pages/homescreen/bottomsheet.dart';
import '../../pages/homescreen/mapscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: const [
          MapScreen(),
          DragScrollBottomSheet(),
        ],
      ),
    );
  }
}
