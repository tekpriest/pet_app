import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_app/helpers/app/colors.dart';
import 'package:pet_app/helpers/constants/routes.dart';
import 'package:pet_app/helpers/constants/screens/utils.dart';
import 'package:pet_app/screens/notificatin/activity.screen.dart';
import 'package:pet_app/screens/notificatin/seller_mode.screen.dart';

enum ScreenMode { activity, seller }

class NotificationScreenController extends StatefulWidget {
  const NotificationScreenController({super.key});

  @override
  State<NotificationScreenController> createState() =>
      _NotificationScreenControllerState();
}

class _NotificationScreenControllerState
    extends State<NotificationScreenController> {
  ScreenMode screenMode = ScreenMode.activity;

  void toggleMode(ScreenMode target) {
    setState(() {
      screenMode = target;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 46,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      left: 0,
                      child: GestureDetector(
                        onTap: () => context.go(homeRoute),
                        child: buildQuicks(IconlyLight.arrowLeft2),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'Notification',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40),
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
                      onTap: () => toggleMode(ScreenMode.activity),
                      child: buildTogglePill(
                          'Activity', screenMode == ScreenMode.activity),
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
             screenMode == ScreenMode.activity ?
              NotificationActivitiyScreen() : NotificationSellerModeScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
