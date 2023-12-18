import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:pet_app/helpers/app/colors.dart';
import 'package:pet_app/helpers/constants/screens/utils.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          decoration: ShapeDecoration(
            color: AppColors.gray,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Center(
            child: Transform(
                transform: Matrix4.identity()
                  ..translate(0.0, 25.0)
                  ..rotateZ(-1.57),
                child: const Icon(
                  IconlyLight.swap,
                  size: 25,
                )),
          ),
        ),
        buildFilter('Food', true),
        buildFilter('Toys', false),
        buildFilter('Accesories', false),
      ],
    );
  }
}
