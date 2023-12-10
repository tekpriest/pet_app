import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_app/screens/auth/change_password.screen.dart';
import 'package:pet_app/screens/auth/login.screen.dart';
import 'package:pet_app/screens/auth/register.screen.dart';
import 'package:pet_app/screens/auth/reset.screen.dart';
import 'package:pet_app/screens/error.screen.dart';
import 'package:pet_app/screens/home.screen.dart';
import 'package:pet_app/screens/profile/mode_controller.dart';
import 'package:pet_app/screens/splash.screen.dart';

const home = '/';
const login = '/auth/login';
const register = '/auth/register';
const resetPassword = '/auth/reset';
const changePassword = '/auth/password/change';
const profile = '/profile';
const sellerMode = '/profile/seller';
const recent = '/recent';
const cart = '/card';

final GoRouter appRoutes = GoRouter(
  routes: [
    GoRoute(
      path: home,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: login,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: register,
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: resetPassword,
      builder: (context, state) => const ResetPasswordScreen(),
    ),
    GoRoute(
      path: changePassword,
      builder: (context, state) => const ChangePasswordScreen(),
    ),
    GoRoute(
      path: profile,
      builder: (context, state) => const ModeController(),
    ),
  ],
  errorBuilder: (context, state) => const NotFoundScreen(),
);
