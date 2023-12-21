import 'package:go_router/go_router.dart';
import 'package:pet_app/screens/auth/change_password.screen.dart';
import 'package:pet_app/screens/auth/login.screen.dart';
import 'package:pet_app/screens/auth/register.screen.dart';
import 'package:pet_app/screens/auth/reset.screen.dart';
import 'package:pet_app/screens/error.screen.dart';
import 'package:pet_app/screens/home.screen.dart';
import 'package:pet_app/screens/notificatin/controller.dart';
import 'package:pet_app/screens/profile/account.screen.dart';
import 'package:pet_app/screens/profile/mode_controller.dart';
import 'package:pet_app/screens/profile/setting.screen.dart';
import 'package:pet_app/screens/search.screen.dart';

const homeRoute = '/';
const loginRoute = '/auth/login';
const registerRoute = '/auth/register';
const resetPasswordRoute = '/auth/reset';
const changePasswordRoute = '/auth/password/change';
const profileRoute = '/profile';
const sellerModeRoute = '/profile/seller';
const settingsRoute = '/profile/settings';
const accountSettingsRoute = '$settingsRoute/account';
const notificationSettingsRoute = '$settingsRoute/notification';
const privacySettingsRoute = '$settingsRoute/privacy';
const securitySettingsRoute = '$settingsRoute/security';
const faqRoute = '/faq';
const recentProductsRoute = '/recent';
const cartRoute = '/cart';
const notificationRoute = '/notification';
const searchRoute = '/search';

final GoRouter appRoutes = GoRouter(
  routes: [
    GoRoute(
      path: homeRoute,
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: loginRoute,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: registerRoute,
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: resetPasswordRoute,
      builder: (context, state) => const ResetPasswordScreen(),
    ),
    GoRoute(
      path: changePasswordRoute,
      builder: (context, state) => const ChangePasswordScreen(),
    ),
    GoRoute(
      path: profileRoute,
      builder: (context, state) => const ModeController(),
    ),
    GoRoute(
      path: notificationRoute,
      builder: (context, state) => const NotificationScreenController(),
    ),
    GoRoute(
      path: searchRoute,
      builder: (context, state) => SearchScreen(),
    ),
    GoRoute(
      path: settingsRoute,
      builder: (context, state) => const SettingScreen(),
    ),
    GoRoute(
      path: accountSettingsRoute,
      builder: (context, state) => AccountSettingsScreen(),
    ),
    GoRoute(
      path: notificationSettingsRoute,
      builder: (context, state) => AccountSettingsScreen(),
    ),
  ],
  errorBuilder: (context, state) => const NotFoundScreen(),
);
