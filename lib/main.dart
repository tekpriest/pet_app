import 'package:flutter/material.dart';
import 'package:pet_app/screens/auth/change_password.screen.dart';
import 'package:pet_app/screens/auth/login.screen.dart';
import 'package:pet_app/screens/auth/register.screen.dart';
import 'package:pet_app/screens/auth/reset.screen.dart';
import 'package:pet_app/screens/home.screen.dart';
import 'package:pet_app/screens/splash.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pet App',
      theme: ThemeData(
        fontFamily: 'Poppins',
        useMaterial3: true,
      ),
      initialRoute: "/auth/register",
      routes: {
        '/': (context) => const SplashScreen(),
        '/auth/login': (context) => const LoginScreen(),
        '/auth/register': (context) => const RegisterScreen(),
        '/auth/reset': (context) => const ResetPasswordScreen(),
        '/auth/password/change': (context) => const ChangePasswordScreen()
      },
      // home: AuthScreen()
    );
  }
}
