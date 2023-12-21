import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_app/helpers/app/colors.dart';
import 'package:pet_app/helpers/constants/routes.dart';
import 'package:pet_app/widgets/screen_header.widget.dart';

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
              const ScreenHeader(
                title: "Settings Page",
                routeName: profileRoute,
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
              Column(
                children: [
                  GestureDetector(
                    onTap: () => context.go(accountSettingsRoute),
                    child: _buildLinks(IconlyLight.profile, 'Account'),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () => context.go(homeRoute),
                    child: _buildLinks(IconlyLight.home, 'Address'),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () => context.go(notificationSettingsRoute),
                    child:
                        _buildLinks(IconlyLight.notification, 'Notification'),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () => context.go(settingsRoute),
                    child: _buildLinks(IconlyLight.wallet, 'Payment Method'),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () => context.go(privacySettingsRoute),
                    child: _buildLinks(IconlyLight.dangerCircle, 'Privacy'),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () => context.go(securitySettingsRoute),
                    child: _buildLinks(IconlyLight.password, 'Security'),
                  ),
                ],
              ),
              const Spacer(),
              const Text(
                'Help',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  _buildLinks(IconlyLight.call, 'Contact Us'),
                  const SizedBox(height: 20),
                  _buildLinks(IconlyLight.document, 'FAQ'),
                ],
              ),
              const Spacer(),
              GestureDetector(
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
