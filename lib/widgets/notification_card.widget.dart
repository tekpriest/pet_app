import 'package:flutter/material.dart';
import 'package:pet_app/helpers/app/colors.dart';

Widget buildNotificationCardImage(String imgUrl) {
  return Container(
    width: 70,
    height: 70,
    decoration: const ShapeDecoration(
      shape: OvalBorder(),
      color: AppColors.gray,
    ),
    child: Center(
      child: Image.asset(
        imgUrl,
        height: 56,
        fit: BoxFit.fitHeight,
      ),
    ),
  );
}
