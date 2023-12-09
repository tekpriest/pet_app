import 'package:flutter/material.dart';
import 'package:pet_app/screens/auth/login.screen.dart';
import 'package:pet_app/screens/auth/register.screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool showLoginScreen = true;

  void toggleScreen() {
    print('toggled');
    setState(() {
      showLoginScreen = !showLoginScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    // if (showLoginScreen)
    //   return LoginScreen(
    //     onTap: toggleScreen,
    //   );
    // else
    //   return RegisterScreen(onTap: toggleScreen);
    return const Placeholder();
  }
}
