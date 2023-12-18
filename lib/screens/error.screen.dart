import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_app/helpers/constants/routes.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Page Does Not Exist'),
            ElevatedButton(
              onPressed: () => context.go(homeRoute),
              child: const Text("Go Home"),
            ),
          ],
        ),
      ),
    );
  }
}
