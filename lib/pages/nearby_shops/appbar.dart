import 'package:flutter/material.dart';

class NearbyShopsAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  NearbyShopsAppBar({Key? key})
      : preferredSize = const Size.fromHeight(70.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0.0,
      title: Padding(
        padding: const EdgeInsets.only(top: 20.0, bottom: 30.0),
        child: Text(
          '\n\nNearby Shops',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.of(context).pop(),
      ),
      // automaticallyImplyLeading: true,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(40.0),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 24.0),
          child: Text(
            "Shops are arranged based on the ones closest to you",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
      ),
    );
  }
}
