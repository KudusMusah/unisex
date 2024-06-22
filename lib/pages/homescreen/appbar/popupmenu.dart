import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/home_con.dart';

class PopUpWindow extends GetView<HomeScreenCon> {
  const PopUpWindow({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> name = controller.user.name.split(' ');
    return PopupMenuButton(
      child: CircleAvatar(
        backgroundColor: Colors.white,
        foregroundImage: AssetImage(controller.user.pic),
        radius: 25.0,
        child: Text('${name[0][0]}${name[1][0]}'),
      ),
      itemBuilder: (context) {
        return <PopupMenuEntry>[
          PopupMenuItem(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 45.0, bottom: 10.0),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                foregroundImage: AssetImage(controller.user.pic),
                radius: 40,
                child: const Icon(Icons.person, size: 40.0),
              ),
            ),
          ),
          PopupMenuItem(
            child: Center(
              child: Text.rich(
                TextSpan(
                    text: '${controller.user.name}\n',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(color: Colors.white),
                    children: [
                      TextSpan(
                        text: controller.user.email,
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall
                            ?.copyWith(color: Colors.white70),
                      )
                    ]),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          // const PopupMenuItem(child:  Divider(
          //             thickness: 1.0,

          //   color:  Color(0xff0ef1ff),
          // ),),
          const PopupMenuDivider(),
          const PopupMenuItem(
            child: Text("Region and City"),
          ),
          const PopupMenuItem(
            child: Text("Favourites"),
          ),
          const PopupMenuItem(
            child: Text("Support"),
          ),
          const PopupMenuItem(
            child: Text("About"),
          ),
          const PopupMenuItem(
            child: Text("Logout"),
          ),
        ];
      },
    );
  }
}
