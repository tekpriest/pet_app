import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_app/helpers/app/colors.dart';
import 'package:pet_app/helpers/constants/routes.dart';
import 'package:pet_app/helpers/constants/screens/utils.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.symmetric(horizontal: 50),
      decoration: ShapeDecoration(
        color: AppColors.gray,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => context.go(home),
            child: buildNavIcon(context, IconlyLight.home, home),
          ),
          GestureDetector(
            child: buildNavIcon(context, IconlyLight.timeCircle, recent),
          ),
          GestureDetector(
            child: buildNavIcon(context, IconlyLight.bag, cart),
          ),
          GestureDetector(
            onTap: () => context.go(profile),
            child: buildNavIcon(context, IconlyLight.profile, profile),
          ),
        ],
      ),
    );
  }
}
