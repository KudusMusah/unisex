import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/location_con.dart';
import '../shared/background_image.dart';
import '../shared/materialbutton.dart';

class LocationScreen extends GetView<LocationCon> {
  const LocationScreen({super.key});
  static String routeName = "/location";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            const BackgroundImage(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: Text(
                      "Please Select Region\nAnd City",
                      textAlign: TextAlign.center,
                      softWrap: false,
                      style: Theme.of(context).textTheme.labelLarge,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                    decoration: BoxDecoration(
                    // color: Theme.of(context).textTheme.labelLarge?.color,
                    color: Theme.of(context).inputDecorationTheme.fillColor,
                    borderRadius: BorderRadius.circular(8.0)

                    ),
                    child: Obx(
                      () => DropdownButton(
                        underline: Divider(color: Theme.of(context).inputDecorationTheme.fillColor, height: 0.0, thickness: 0.0,),
                        borderRadius: BorderRadius.circular(8.0),
                        style: Theme.of(context).textTheme.labelSmall,
                        isExpanded: true,
                        isDense: false,
                        hint: const Text("Please Select"),
                        disabledHint: const Text("Please Select"),
                        // Initial Value
                        value: controller.value.value,

                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),

                        // Array list of items
                        items: controller.menuItems(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (newValue) {
                          controller.valueChanged(newValue);
                        },
                      ),
                    ),
                  ),
                  // DropdownButton(value: controller.value, items: controller.menuItems(), onChanged: (value) => controller.valueChanged),
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: Button(
                      buttonText: "Done",
                      onPressed: () => controller.done(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
