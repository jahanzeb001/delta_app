import 'package:delta_app/constant/decorations.dart';
import 'package:delta_app/constant/paddings.dart';
import 'package:delta_app/constant/spacing.dart';
import 'package:delta_app/constant/styles/colors.dart';
import 'package:delta_app/screens/laptops/components/laptop_listview_products_component.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/styles/app_textstyles.dart';
import '../components/laptop_grid_view_product_component.dart';
import '../controller/laptop_products_controller.dart';

class LaptopProducts extends StatelessWidget {
  const LaptopProducts({super.key});

  @override
  Widget build(BuildContext context) {
    var laptopProductsController = Get.find<LaptopController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Laptop"),
        backgroundColor: appthem,
      ),
      body: Column(
        children: [
          Padding(
            padding: padA5,
            child: Row(
              children: [
                Text(
                  "Laptops",
                  style: hMediumX,
                ),
                const Spacer(),
                Obx(() => laptopProductsController.isGridView.value
                    ? Align(
                        child: IconButton(
                            onPressed: () {
                              laptopProductsController.changListType();
                            },
                            icon: const Icon(Icons.list)),
                      )
                    : IconButton(
                        onPressed: () {
                          laptopProductsController.changListType();
                        },
                        icon: const Icon(Icons.dashboard))),
              ],
            ),
          ),
          vSpac12,
          Obx(() => laptopProductsController.isGridView.value
              ? Flexible(
                  child: Container(
                      decoration: productBox,
                      height: 1000,
                      child: GridView.builder(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, bottom: 10),
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 200,
                                  childAspectRatio: 2 / 3,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10),
                          itemCount: 10,
                          itemBuilder: (BuildContext ctx, index) {
                            return const LaptopGridProductComponent();
                          })),
                )
              : SizedBox(
                  //decoration: productBox,
                  height: 500,
                  child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              left: index == 0 ? 10 : 12,
                              right: index == 9 ? 10 : 0,
                              top: 5,
                              bottom: 5),
                          child: const LaptopListViewProductComponent(),
                        );
                      }),
                )),
        ],
      ),
    );
  }
}
