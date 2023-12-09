import 'package:flutter/material.dart';
import 'package:pet_app/helpers/app/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/auth/login');
          },
          child: Container(
              height: 60,
              decoration: ShapeDecoration(
                color: Color(AppColors.primary.value),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(31),
                ),
              ),
              child: const Center(child: Text('Login'))),
        ),
      ),
    );
  }
}
