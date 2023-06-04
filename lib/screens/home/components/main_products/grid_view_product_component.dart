import 'package:delta_app/constant/decorations.dart';
import 'package:delta_app/constant/paddings.dart';
import 'package:delta_app/constant/spacing.dart';
import 'package:delta_app/constant/styles/app_textstyles.dart';
import 'package:delta_app/constant/styles/colors.dart';
import 'package:delta_app/screens/home/model/all_products_response_model.dart'
    as model;
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class GridProductComponent extends StatelessWidget {
  List<model.AllProductsResponse> allProducts;
  int index = 0;
  GridProductComponent({super.key, required this.allProducts, index});

  @override
  Widget build(BuildContext context) {
    print("******************************************${allProducts.length}");
    return Container(
      decoration: productBox,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: padA1,
            child: Row(
              children: [
                SizedBox(
                  width: 95,
                  child: Text(
                    allProducts[index].name ?? "",
                    style: hsmall,
                    maxLines: 3,
                  ),
                ),
                hSpac7,
              ],
            ),
          ),
          Padding(
            padding: padA1,
            child: Text(allProducts[index].type ?? "",
                style: hxMedium.copyWith(fontSize: 12)),
          ),
          vSpac10,
          Center(
            child: Image.network(
              "${allProducts[index].images ?? ""}",
              height: 100,
            ),
          ),
          Row(
            children: [
              hSpac14,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("AED 700 ", style: hMedium.copyWith(fontSize: 12)),
                  Text(
                    "AED 1000 ",
                    style: hsmall.copyWith(fontSize: 9),
                  ),
                ],
              ),
              hSpac30,
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_basket,
                    color: cBlack,
                  ))
            ],
          ),
          Padding(
            padding: padA1,
            child: RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 20,
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ),
        ],
      ),
    );
  }
}
