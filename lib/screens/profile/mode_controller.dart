import 'package:flutter/material.dart';
import 'package:pet_app/helpers/app/colors.dart';
import 'package:pet_app/helpers/constants/screens/utils.dart';
import 'package:pet_app/screens/profile/profile.screen.dart';
import 'package:pet_app/screens/profile/seller_mode.screen.dart';

enum ScreenMode { seller, profile }

class ModeController extends StatefulWidget {
  const ModeController({super.key});

  @override
  State<ModeController> createState() => _ModeControllerState();
}

class _ModeControllerState extends State<ModeController> {
  ScreenMode screenMode = ScreenMode.profile;

  void toggleMode(ScreenMode target) {
    setState(() {
        screenMode = target;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool safeBottom = screenMode == ScreenMode.profile ? false : true;
    return Scaffold(
      body: SafeArea(
        bottom: safeBottom,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 60),
              width: 260,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 2),
              decoration: ShapeDecoration(
                color: AppColors.gray,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => toggleMode(ScreenMode.profile),
                    child: buildTogglePill(
                        'Profile', screenMode == ScreenMode.profile),
                  ),
                  GestureDetector(
                    onTap: () => toggleMode(ScreenMode.seller),
                    child: buildTogglePill(
                        'Seller Mode', screenMode == ScreenMode.seller),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            screenMode == ScreenMode.profile
                ? const ProfileScreen()
                : const SellerModeScreen()
          ],
        ),
      ),
    );
  }
}
