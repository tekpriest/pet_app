import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_app/helpers/app/colors.dart';
import 'package:pet_app/helpers/constants/routes.dart';
import 'package:pet_app/helpers/constants/screens/utils.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:pet_app/widgets/bottom_navigation.widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
                    decoration: ShapeDecoration(
                      shape: OvalBorder(),
                      color: AppColors.gray,
                    ),
                    child: Center(
                        child: const Text(
                      "A",
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
          Text(
            "Abduldul",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildFilter('Saved', true),
                const SizedBox(width: 24),
                buildFilter('Edit Profile', false),
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
          ),
          const SizedBox(height: 24),
          BottomNavigation(),
        ],
      ),
    );
  }

  Widget _buildNavIcon(IconData icon, String path) {
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
}
