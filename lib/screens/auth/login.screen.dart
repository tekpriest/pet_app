import 'package:flutter/material.dart';
import 'package:pet_app/helpers/app/colors.dart';
import 'package:pet_app/widgets/button.widget.dart';
import 'package:pet_app/widgets/input.widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  bool validFields = false;

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
            left: 20,
            right: 23,
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
                    "Hello,",
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w600,
                      // height: 0.03,
                    ),
                  ),
                  Text(
                    "Welcome Back!",
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/auth/reset'),
                        child: Text(
                          'Forgot Password',
                          style:
                              TextStyle(color: AppColors.primary, fontSize: 12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin:
                                const EdgeInsets.only(left: 10.0, right: 30.0),
                            child: const Divider(
                              color: Color(0xFFE3E8F1),
                              thickness: 1.3,
                            ),
                          ),
                        ),
                        const Text('or',
                            style: TextStyle(
                                color: Color(0xFFC6CEDD),
                                fontWeight: FontWeight.w400)),
                        Expanded(
                          child: Container(
                            margin:
                                const EdgeInsets.only(left: 30.0, right: 10.0),
                            child: const Divider(
                              color: Color(0xFFE3E8F1),
                              thickness: 1.3,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        SocialButton(
                          social: 'google',
                          name: 'Google',
                        ),
                        const Spacer(),
                        SocialButton(social: 'facebook')
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                        color: Color(0xFF1A1919),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        height: 0.13),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/auth/register');
                    },
                    child: Text(
                      'Create Account',
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
                child: Container(
                    height: 60,
                    decoration: ShapeDecoration(
                      color: Color(
                          validFields ? AppColors.primary.value : 0xFFE5E4E3),
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
