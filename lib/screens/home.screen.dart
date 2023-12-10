import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_app/helpers/app/colors.dart';
import 'package:pet_app/helpers/constants/routes.dart';
import 'package:pet_app/helpers/constants/screens/utils.dart';
import 'package:pet_app/widgets/bottom_navigation.widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Location',
                            style: TextStyle(
                                color: AppColors.textGray,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(width: 5),
                          Icon(IconlyLight.arrowDown2, size: 10)
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text('Jebres, Surakarta', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  Spacer(),
                  GestureDetector(child: _buildQuicks(IconlyLight.search)),
                  const SizedBox(width: 20),
                  GestureDetector(
                      child: _buildQuicks(IconlyLight.notification)),
                ],
              ),
            ),
            Container(
              height: 230,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Stack(
                alignment: AlignmentDirectional.centerStart,
                children: [
                  Container(
                    height: 140,
                    decoration: ShapeDecoration(
                      color: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Image.asset(
                      'assets/imgs/products/rc_pomeranian.png',
                      height: 176,
                      fit: BoxFit.fitHeight,
                    ),
                    top: 5,
                    left: -25,
                  ),
                  Positioned(
                    child: Image.asset(
                      'assets/imgs/products/rc_pomeranian.png',
                      height: 161,
                      fit: BoxFit.fitHeight,
                    ),
                    top: 50,
                    // bottom: 20,
                  ),
                  Positioned(
                    right: 35,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 180,
                          child: const Text(
                            'Royal Canin\nAdult Pomeraniann',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const SizedBox(height: 7),
                        SizedBox(
                          width: 200,
                          child: const Text(
                            'Get an interesting promo here, without conditions',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Category',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
                  ),
                  GestureDetector(
                    child: const Text(
                      'View All',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 14),
                    decoration: ShapeDecoration(
                      color: AppColors.gray,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Center(
                      child: Transform(
                          transform: Matrix4.identity()
                            ..translate(0.0, 19.0)
                            ..rotateZ(-1.57),
                          child: Icon(
                            IconlyLight.swap,
                            size: 20,
                          )),
                    ),
                  ),
                  buildFilter('Food', true),
                  buildFilter('Toys', false),
                  buildFilter('Accesories', false),
                ],
              ),
            ),
            const SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Best Seller',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
                  ),
                  GestureDetector(
                    child: const Text(
                      'View All',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    buildProduct('RC Kitten', '20.99', 'rc_kitten'),
                    buildProduct('RC Persian', '22.99', 'rc_persian'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            BottomNavigation()
          ],
        ),
      ),
    );
  }

  Widget _buildQuicks(IconData icon) {
    return Container(
      width: 46,
      height: 46,
      padding: const EdgeInsets.all(5),
      child: Icon(
        icon,
        size: 24,
      ),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x11000000),
            blurRadius: 20,
            offset: Offset(4, 4),
            spreadRadius: 0,
          ),
        ],
      ),
    );
  }
}
