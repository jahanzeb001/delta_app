import 'package:delta_app/constant/decorations.dart';
import 'package:delta_app/constant/paddings.dart';
import 'package:delta_app/constant/spacing.dart';
import 'package:delta_app/constant/styles/app_textstyles.dart';
import 'package:delta_app/constant/styles/colors.dart';
import 'package:delta_app/reuseable_widgets/custom_drawer.dart';
import 'package:delta_app/reuseable_widgets/custom_error.dart';
import 'package:delta_app/screens/home/components/deals_of_day_product_components/grid_view_product_component.dart';
import 'package:delta_app/screens/home/components/deals_of_day_product_components/listview_products_component.dart';
import 'package:delta_app/screens/home/components/my_image_slider.dart';
import 'package:delta_app/screens/home/components/main_products/listview_products_component.dart';
import 'package:delta_app/screens/home/components/top_bar_component.dart';
import 'package:delta_app/screens/home/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/main_products/grid_view_product_component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var homeScreenController = Get.find<HomeScreenController>();
    return Scaffold(
      drawer: const MyDrawer(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopBarComponent(),
            Flexible(
              child: SizedBox(
                height: 1000,
                //  color: Colors.red,
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const MyImageSlider(),
                        vSpac20,
                        Padding(
                          padding: padA1,
                          child: Image.network(
                            "https://ditllcae.com/wp-content/uploads/2023/04/cover-1536x320.png",
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        hSpac10,

                        ////==============================================================
                        Obx(() => homeScreenController.loadingAllProducts.value
                            ? const SizedBox(
                                height: 250,
                                child: Center(
                                  child: CircularProgressIndicator(
                                    color: appthem,
                                  ),
                                ),
                              )
                            : homeScreenController.errorGettingProducts.value !=
                                    ""
                                ? Custom_Error(
                                    height: 255,
                                    error: homeScreenController
                                        .errorGettingProducts.value,
                                    onpressed: () {
                                      homeScreenController.getProducts();
                                    },
                                  )
                                : Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      homeScreenController.isGridView.value
                                          ? IconButton(
                                              onPressed: () {
                                                homeScreenController
                                                    .changListType();
                                              },
                                              icon: const Icon(Icons.list))
                                          : IconButton(
                                              onPressed: () {
                                                homeScreenController
                                                    .changListType();
                                              },
                                              icon:
                                                  const Icon(Icons.dashboard)),
                                      vSpac12,
                                      homeScreenController.isGridView.value
                                          ? SizedBox(
                                              //decoration: productBox,
                                              height: 500,
                                              child: ListView.builder(
                                                  itemCount:
                                                      homeScreenController
                                                          .allProducts.length,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return Padding(
                                                      padding: EdgeInsets.only(
                                                          left: index == 0
                                                              ? 10
                                                              : 12,
                                                          right: index == 9
                                                              ? 10
                                                              : 0,
                                                          top: 5,
                                                          bottom: 5),
                                                      child: ListViewProductComponent(
                                                          index: index++,
                                                          allProducts:
                                                              homeScreenController
                                                                  .allProducts),
                                                    );
                                                  }),
                                            )
                                          : Container(
                                              decoration: productBox,
                                              height: 500,
                                              child: GridView.builder(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          right: 10,
                                                          bottom: 10),
                                                  gridDelegate:
                                                      const SliverGridDelegateWithMaxCrossAxisExtent(
                                                          maxCrossAxisExtent:
                                                              200,
                                                          childAspectRatio:
                                                              2 / 3,
                                                          crossAxisSpacing: 10,
                                                          mainAxisSpacing: 10),
                                                  itemCount:
                                                      homeScreenController
                                                          .allProducts.length,
                                                  itemBuilder:
                                                      (BuildContext ctx,
                                                          index) {
                                                    var data =
                                                        homeScreenController
                                                            .allProducts;
                                                    return GridProductComponent(
                                                      index: index,
                                                      allProducts: data,
                                                    );
                                                  })),
                                    ],
                                  )),

                        ////=======================================================
                        Padding(
                          padding: padA5,
                          child: Row(
                            children: [
                              Text(
                                "Deals Of Day",
                                style: hMediumX,
                              ),
                              const Spacer(),
                              Obx(() => homeScreenController
                                      .isDealsOfDayGridView.value
                                  ? Align(
                                      child: IconButton(
                                          onPressed: () {
                                            homeScreenController
                                                .changDealsOfDayListType();
                                          },
                                          icon: const Icon(Icons.list)),
                                    )
                                  : IconButton(
                                      onPressed: () {
                                        homeScreenController
                                            .changDealsOfDayListType();
                                      },
                                      icon: const Icon(Icons.dashboard))),
                            ],
                          ),
                        ),

                        vSpac12,
                        Obx(() => homeScreenController
                                .isDealsOfDayGridView.value
                            ? SizedBox(
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
                                        child:
                                            const DealsOfDayListViewProductComponent(),
                                      );
                                    }),
                              )
                            : Container(
                                decoration: productBox,
                                height: 500,
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
                                      return const DealsOfDayGridProductComponent();
                                    }))),

                        ///==================================================

                        Padding(
                          padding: padA5,
                          child: Row(
                            children: [
                              Text(
                                "Our Featured Products",
                                style: hMediumX,
                              ),
                              const Spacer(),
                              Obx(() => homeScreenController
                                      .isFeaturedProductsGridView.value
                                  ? Align(
                                      child: IconButton(
                                          onPressed: () {
                                            homeScreenController
                                                .changFeaturedProductListType();
                                          },
                                          icon: const Icon(Icons.list)),
                                    )
                                  : IconButton(
                                      onPressed: () {
                                        homeScreenController
                                            .changFeaturedProductListType();
                                      },
                                      icon: const Icon(Icons.dashboard))),
                            ],
                          ),
                        ),

                        ///================================================================
                      ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
