import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_app/helpers/constants/screens/utils.dart';

class ScreenHeader extends StatelessWidget {
  final String title;
  final String routeName;
  const ScreenHeader(
      {super.key, required this.title, required this.routeName});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 0,
            child: GestureDetector(
              onTap: () => context.go(routeName),
              child: buildQuicks(IconlyLight.arrowLeft2),
            ),
          ),
          Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
