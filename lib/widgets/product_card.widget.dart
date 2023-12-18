import 'package:flutter/material.dart';
import 'package:pet_app/helpers/app/colors.dart';
import 'package:pet_app/models/product.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final amount = product.amount.toString();

    return Container(
      width: 185,
      height: 300,
      decoration: ShapeDecoration(
        color: AppColors.gray,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Stack(alignment: AlignmentDirectional.topCenter, children: [
        Positioned(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              product.imgUrl,
              height: 200,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Positioned(
          bottom: 35,
          left: 10,
          child: Text(
            product.name,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          child: Text("\$$amount",
              style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w600, height: 1.11)),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: Container(
              padding: const EdgeInsets.all(5),
              decoration: const ShapeDecoration(
                shape: OvalBorder(),
                color: AppColors.primary,
              ),
              child: const Icon(
                Icons.add,
                size: 25,
                color: Colors.white,
              )),
        ),
      ]),
    );
  }
}
