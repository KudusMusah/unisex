import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unisex/controllers/home_con.dart';
import 'package:unisex/pages/homescreen/appbar/popupmenu.dart';

class AppBarScreen extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  AppBarScreen({Key? key}) : preferredSize = const Size.fromHeight(120.0), super(key: key);
  
  final controller = Get.put(HomeScreenCon());
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 150.0,
      title:  Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const PopUpWindow(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 4.0),
              decoration: BoxDecoration(
                color: Theme.of(context).dividerTheme.color?.withOpacity(0.15),
                borderRadius: BorderRadius.circular(12.0)
              ),
              child: Text(controller.user.regionCity.split(', ')[1],
              style: const TextStyle(
                color: Color(0xff25b39e),
                fontFamily: 'Poppins',
                fontSize: 15.0,
                fontWeight: FontWeight.bold
                ),
              ),),
              GestureDetector(
                onTap: () => controller.toNearbyShops(),
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 25.0,),
              ),
          ],
        ),
      ),
      primary: false,
      centerTitle: true,
      foregroundColor: Colors.transparent,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
    );
  }
}
