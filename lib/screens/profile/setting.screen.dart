import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_app/helpers/app/colors.dart';
import 'package:pet_app/helpers/constants/routes.dart';
import 'package:pet_app/helpers/constants/screens/utils.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 46,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      left: 0,
                      child: GestureDetector(
                        onTap: () => context.go(profileRoute),
                        child: buildQuicks(IconlyLight.arrowLeft2),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'Settings Page',
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
              const Text(
                'Account',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 350,
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildLinks(IconlyLight.profile, 'Account'),
                      _buildLinks(IconlyLight.home, 'Address'),
                      _buildLinks(IconlyLight.notification, 'Notification'),
                      _buildLinks(IconlyLight.wallet, 'Payment Method'),
                      _buildLinks(IconlyLight.dangerCircle, 'Privacy'),
                      _buildLinks(IconlyLight.password, 'Security'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Help',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              Expanded(
                child: Column(
                  children: [
                    _buildLinks(IconlyLight.call, 'Contact Us'),
                    const SizedBox(height: 20),
                    _buildLinks(IconlyLight.document, 'FAQ'),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: GestureDetector(
                  onTap: () => context.go(loginRoute),
                  child: Container(
                    height: 60,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(31),
                        side: const BorderSide(color: AppColors.primary),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Log Out',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLinks(IconData icon, String name) {
    return Row(
      children: [
        Container(
          width: 42,
          height: 42,
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: AppColors.gray,
          ),
          child: Center(
            child: Icon(icon, size: 20),
          ),
        ),
        const SizedBox(width: 20),
        Text(
          name,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Spacer(),
        const Icon(
          IconlyLight.arrowRight2,
          size: 24,
        ),
      ],
    );
  }
}
