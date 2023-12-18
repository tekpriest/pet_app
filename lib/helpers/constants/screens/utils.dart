import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_app/helpers/app/colors.dart';

Widget buildFilter(String name, bool selected) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
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
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      Text(
        description,
        style: const TextStyle(fontSize: 14),
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
        bottom: 35,
        left: 10,
        child: Text(
          name,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      Positioned(
        bottom: 10,
        left: 10,
        child: Text('\$$amount',
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
  IconData selectedIcon,
  String path,
) {
  bool isCurrent = GoRouterState.of(context).path == path;
  List<Widget> children = [
    Icon(
      isCurrent
          ? selectedIcon
          : icon,
      size: 30,
      color: isCurrent ? AppColors.primary : AppColors.textGray,
    ),
    const SizedBox(height: 3),
  ];
  if (isCurrent) {
    children.addAll(
      [
        Container(
          height: 5,
          width: 5,
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: children,
  );
}

Widget buildQuicks(IconData icon) {
  return Container(
    width: 46,
    height: 46,
    padding: const EdgeInsets.all(5),
    decoration: ShapeDecoration(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      shadows: const [
        BoxShadow(
          color: Color(0x11000000),
          blurRadius: 20,
          offset: Offset(4, 4),
          spreadRadius: 0,
        ),
      ],
    ),
    child: Icon(
      icon,
      size: 24,
    ),
  );
}
