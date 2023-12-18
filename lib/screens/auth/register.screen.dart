import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_app/helpers/app/colors.dart';
import 'package:pet_app/helpers/constants/routes.dart';
import 'package:pet_app/widgets/input.widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final nameTextController = TextEditingController();
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  bool acceptedTerms = false;
  final _formKey = GlobalKey<FormState>(debugLabel: 'registerForm');

  bool validFields = false;

  void toggleTerms(bool? state) {
    setState(() {
      acceptedTerms = state!;
    });
  }

  @override
  void initState() {
    super.initState();

    // listen to form changes
    nameTextController.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    validFields =
        emailTextController.text != '' && passwordTextController.text != '';
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
              const Text(
                "Create New\nAccount",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w600,
                  // height: 0.03,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Water is life. Water is a basic human need. In various lines of life, humans need water.",
                style: TextStyle(color: Color(0xFF898989), fontSize: 16),
              ),
              const SizedBox(height: 40),
              Expanded(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InputField(
                        controller: nameTextController,
                        hintText: 'Full Name',
                        field: 'full name',
                        isOptional: true,
                      ),
                      const SizedBox(height: 20),
                      InputField(
                        controller: emailTextController,
                        hintText: 'Email',
                        field: 'email',
                        isOptional: false,
                      ),
                      const SizedBox(height: 20),
                      InputField(
                        controller: passwordTextController,
                        hintText: 'Password',
                        obscureText: true,
                        field: 'password',
                        isOptional: false,
                      ),
                      const SizedBox(height: 15),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 19),
                            child: Checkbox(
                              value: acceptedTerms,
                              onChanged: toggleTerms,
                              checkColor: Colors.transparent,
                              fillColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                if (acceptedTerms) {
                                  return AppColors.primary;
                                }
                                return const Color(0xFFE5E4E3)
                                    .withOpacity(0.50);
                              }),
                              side: acceptedTerms
                                  ? const BorderSide(
                                      width: 5, color: AppColors.primary)
                                  : BorderSide.none,
                            ),
                          ),
                          const SizedBox(
                            width: 300,
                            child: Wrap(
                              children: [
                                Text(
                                  "I agree to the ",
                                  style: TextStyle(
                                      color: Color(0xFFB3B1B0),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Terms of Service",
                                  style: TextStyle(
                                      color: Color(0xFFFD9340),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  ' and',
                                  style: TextStyle(
                                      color: Color(0xFFB3B1B0),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Privacy Policy',
                                  style: TextStyle(
                                      color: Color(0xFFFD9340),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                        color: Color(0xFF1A1919),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        height: 0.13),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
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
                onTap: () => context.go(profileRoute),
                child: Container(
                    height: 60,
                    decoration: ShapeDecoration(
                      color: Color(_formKey.currentState!.validate()
                          ? AppColors.primary.value
                          : 0xFFE5E4E3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(31),
                      ),
                    ),
                    child: const Center(child: Text("Get Started"))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
