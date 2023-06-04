import 'package:delta_app/constant/decorations.dart';
import 'package:delta_app/constant/paddings.dart';
import 'package:delta_app/constant/spacing.dart';
import 'package:delta_app/constant/styles/colors.dart';
import 'package:delta_app/reuseable_widgets/rounded_textfield.dart';
import 'package:delta_app/screens/home/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopBarComponent extends StatelessWidget {
  const TopBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    var homeScreenController = Get.find<HomeScreenController>();
    return Container(
        decoration: topHeader,
        child: Obx(
          () => homeScreenController.isShowSerchField.value
              ? Padding(
                  padding: padA5,
                  child: Row(
                    children: [
                      const Expanded(flex: 3, child: RoundedTextField()),
                      hSpac10,
                      Expanded(
                          flex: 1,
                          child: SizedBox(
                            height: 40.0,
                            width: 40.0,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: appthem),
                              onPressed: () {
                                homeScreenController.switchSerachField();
                              },
                              child: const Text('Hide'),
                            ),
                          )),
                    ],
                  ),
                )
              : Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        icon: const Icon(Icons.menu)),
                    hSpac10,
                    Image.network(
                      "https://ditllcae.com/wp-content/uploads/2022/12/Ditlogo.png",
                      height: 25,
                    ),
                    hSpac60,
                    IconButton(
                        onPressed: () {
                          homeScreenController.switchSerachField();
                        },
                        icon: const Icon(Icons.search)),
                    hSpac5,
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.person)),
                    hSpac5,
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_outline)),
                  ],
                ),
        ));
  }
}
