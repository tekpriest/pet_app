import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_app/helpers/app/colors.dart';
import 'package:pet_app/helpers/constants/routes.dart';
import 'package:pet_app/mock/products.dart';
import 'package:pet_app/models/product.dart';
import 'package:pet_app/widgets/bottom_navigation.widget.dart';
import 'package:pet_app/widgets/filter.widget.dart';
import 'package:pet_app/widgets/location.widget.dart';
import 'package:pet_app/widgets/product_card.widget.dart';

class HomeScreen extends StatelessWidget {
  final List<ProductModel> products = Products.getProducts();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => showModalBottomSheet(
                            context: context,
                            useRootNavigator: false,
                            useSafeArea: true,
                            builder: (BuildContext context) => LocationSheet()),
                        child: const Row(
                          children: [
                            Text(
                              'Location',
                              style: TextStyle(
                                  color: AppColors.textGray,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(width: 5),
                            Icon(IconlyLight.arrowDown2, size: 10)
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text('Jebres, Surakarta',
                          style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                      onTap: () => context.go(searchRoute),
                      child: _buildQuicks(
                        IconlyLight.search,
                      )),
                  const SizedBox(width: 20),
                  GestureDetector(
                      onTap: () => context.go(notificationRoute),
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
                    top: 5,
                    left: -25,
                    child: Image.asset(
                      'assets/imgs/products/rc_pomeranian.png',
                      height: 176,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Positioned(
                    top: 50,
                    child: Image.asset(
                      'assets/imgs/products/rc_pomeranian.png',
                      height: 161,
                      fit: BoxFit.fitHeight,
                    ),
                    // bottom: 20,
                  ),
                  const Positioned(
                    right: 35,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 180,
                          child: Text(
                            'Royal Canin\nAdult Pomeraniann',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(height: 7),
                        SizedBox(
                          width: 200,
                          child: Text(
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: FilterWidget(),
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
              child: ListView.builder(
                  itemCount: products.length,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 11),
                  itemBuilder: (context, index) {
                    final ProductModel product = products[index];
                    return Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ProductCard(product: product));
                  }),
            ),
            const SizedBox(height: 20),
            const BottomNavigation(),
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
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x11000000),
            blurRadius: 20,
            offset: Offset(4, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Icon(
        icon,
        size: 24,
      ),
    );
  }
}
