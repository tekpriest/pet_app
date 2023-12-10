import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_app/helpers/app/colors.dart';

Widget buildFilter(String name, bool selected) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
    decoration: ShapeDecoration(
      color: selected ? AppColors.primary : AppColors.gray,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    child: Center(
      child: Text(
        name,
        style: TextStyle(
          fontSize: 14,
          color: selected ? Colors.white : AppColors.textGray,
        ),
      ),
    ),
  );
}

Widget buildStats(String count, String description) {
  return Column(
    children: [
      Text(
        count,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      Text(
        description,
        style: TextStyle(fontSize: 14),
      ),
    ],
  );
}

Widget buildProduct(String name, String amount, String img) {
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
            'assets/imgs/products/$img.png',
            height: 200,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
      Positioned(
        child: Text(
          name,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
        ),
        bottom: 35,
        left: 10,
      ),
      Positioned(
        child: Text('\$$amount',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, height: 1.11)),
        bottom: 10,
        left: 10,
      ),
      Positioned(
        child: Container(
            padding: const EdgeInsets.all(5),
            decoration: ShapeDecoration(
              shape: OvalBorder(),
              color: AppColors.primary,
            ),
            child: Icon(
              Icons.add,
              size: 25,
              color: Colors.white,
            )),
        right: 10,
        bottom: 10,
      ),
    ]),
  );
}

Widget buildTogglePill(String name, bool selected) {
  return Container(
    decoration: ShapeDecoration(
      color: selected ? AppColors.primary : AppColors.gray,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
    ),
    height: 43,
    width: 125,
    child: Center(
        child: Text(
      name,
      style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: selected ? Colors.white : AppColors.textGray),
    )),
  );
}

Widget buildNavIcon(
  BuildContext context,
  IconData icon,
  String path,
) {
  bool isCurrent = GoRouterState.of(context).path == path;
  List<Widget> children = [
    Icon(
      isCurrent
          ? IconlyBoldData(icon.codePoint)
          : IconlyLightData(icon.codePoint),
      size: 30,
      color: isCurrent ? AppColors.primary : AppColors.textGray,
    ),
    const SizedBox(height: 3),
  ];
  if (isCurrent)
    children.addAll(
      [
        Container(
          height: 5,
          width: 5,
          decoration: ShapeDecoration(
            shape: OvalBorder(),
            color: AppColors.primary,
          ),
        ),
      ],
    );

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: children,
  );
}
