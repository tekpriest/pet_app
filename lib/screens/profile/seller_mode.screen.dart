import 'package:flutter/material.dart';
import 'package:pet_app/helpers/app/colors.dart';

import '../../helpers/constants/screens/utils.dart';

class SellerModeScreen extends StatelessWidget {
  const SellerModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 260,
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Container(
                  height: 200,
                  decoration: ShapeDecoration(
                    color: AppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: const ShapeDecoration(
                      shape: OvalBorder(),
                      color: AppColors.gray,
                    ),
                    child: const Center(
                        child: Text(
                      "P",
                      style: TextStyle(
                        fontSize: 83,
                        fontWeight: FontWeight.w900,
                      ),
                    )),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            "Pittashop",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 56),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildStats('109', 'Followers'),
                buildStats('992', 'Following'),
                buildStats('80', 'Sales'),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildFilter('Product', true),
                buildFilter('Sold', false),
                buildFilter('Stats', false),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Expanded(
            child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  buildProduct('RC Kitten', '20.99', 'rc_kitten'),
                  buildProduct('RC Persian', '22.99', 'rc_persian'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
