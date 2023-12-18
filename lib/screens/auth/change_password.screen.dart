import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_app/helpers/app/colors.dart';
import 'package:pet_app/helpers/constants/routes.dart';
import 'package:pet_app/widgets/input.widget.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final passwordTextController = TextEditingController();
  final confirmPasswordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 50,
            left: 25,
            right: 25,
            bottom: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Wrap(
                direction: Axis.vertical,
                spacing: -5,
                children: [
                  Text(
                    'Forgot',
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w600,
                      // height: 0.03,
                    ),
                  ),
                  Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w600,
                      // height: 0.03,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Water is life. Water is a basic human need. In various lines of life, humans need water.",
                style: TextStyle(color: Color(0xFF898989), fontSize: 16),
              ),
              const SizedBox(height: 40),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InputField(
                      controller: passwordTextController,
                      hintText: 'New Password',
                      field: 'password',
                      isOptional: false,
                    ),
                    const SizedBox(height: 20),
                    InputField(
                      controller: confirmPasswordTextController,
                      hintText: 'Confirm Password',
                      field: 'confirm password',
                      isOptional: false,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already a member?',
                    style: TextStyle(
                      color: Color(0xFF1A1919),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      height: 0.13,
                    ),
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: () => context.go(loginRoute),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Color(0xFFFD9340),
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        height: 0.13,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () => context.go(changePasswordRoute),
                child: Container(
                  height: 60,
                  decoration: ShapeDecoration(
                    color: Color(AppColors.primary.value),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(31),
                    ),
                  ),
                  child: const Center(child: Text('Reset Passwrd')),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
