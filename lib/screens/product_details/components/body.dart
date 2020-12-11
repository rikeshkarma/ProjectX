import 'package:flutter/material.dart';
import 'package:sabko_bazaar/components/default_button.dart';
import 'package:sabko_bazaar/models/product.dart';
import 'package:sabko_bazaar/size_config.dart';

import 'product_images.dart';
import 'project_description.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: ProductDescription(
              product: product,
              pressOnSeeMore: () {},
            ),
          ),
          TopRoundedContainer(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(
                left: SizeConfig.screenWidth * 0.15,
                right: SizeConfig.screenWidth * 0.15,
                top: getProportionateScreenWidth(15),
                bottom: getProportionateScreenWidth(40),
              ),
              child: DefaultButton(
                text: "Add to Cart",
                press: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
