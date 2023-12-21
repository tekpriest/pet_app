import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:pet_app/helpers/app/colors.dart';
import 'package:pet_app/helpers/constants/routes.dart';
import 'package:pet_app/widgets/input.widget.dart';
import 'package:pet_app/widgets/screen_header.widget.dart';

class AccountSettingsScreen extends StatelessWidget {
  AccountSettingsScreen({super.key});

  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController usernameCtrl = TextEditingController();
  final TextEditingController emailCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              ScreenHeader(
                title: 'Account',
                routeName: settingsRoute,
              ),
              const SizedBox(height: 40),
              Container(
                height: 210,
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Container(
                      height: 160,
                      decoration: ShapeDecoration(
                        color: AppColors.gray,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: const ShapeDecoration(
                          shape: OvalBorder(),
                          color: AppColors.textGray,
                        ),
                        child: Center(
                          child: Text(
                            "A",
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 15,
                      top: 15,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: ShapeDecoration(
                          shape: OvalBorder(),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Icon(
                            IconlyLight.edit,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Positioned(
                        right: -50,
                        top: 50,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: ShapeDecoration(
                            shape: OvalBorder(),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Icon(
                              IconlyLight.edit,
                              size: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                "Abduldul",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  const Text(
                    "Abduldul",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),
                  InputField(
                    controller: nameCtrl,
                    hintText: "Abdul",
                    field: 'name',
                    isOptional: true,
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    "Abduldul",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),
                  InputField(
                    controller: usernameCtrl,
                    hintText: "Abdul",
                    field: 'username',
                    isOptional: true,
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    "Abduldul",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),
                  InputField(
                    controller: emailCtrl,
                    hintText: 'abdul@pet.app',
                    field: 'email',
                    isOptional: true,
                  ),
                ],
              ),
              const Spacer(),
              GestureDetector(
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(31),
                  ),
                  // decoration: ShapeDecoration(
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(31),
                  //     side: const BorderSide(color: AppColors.primary),
                  child: const Center(
                    child: Text(
                      'Save Changes',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
