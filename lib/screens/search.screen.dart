import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_app/helpers/constants/routes.dart';
import 'package:pet_app/helpers/constants/screens/utils.dart';
import 'package:pet_app/mock/search.dart';
import 'package:pet_app/widgets/filter.widget.dart';
import 'package:pet_app/widgets/input.widget.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final searchCtrl = SearchController();
  final List<String> recentSearches = Recents.getRecentSeaches();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 46,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      left: 0,
                      child: GestureDetector(
                        onTap: () => context.go(homeRoute),
                        child: buildQuicks(IconlyLight.arrowLeft2),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'Search',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40),
              InputField(
                controller: searchCtrl,
                hintText: 'Search your product',
                field: 'search',
                isOptional: true,
                prefixIcon: IconlyLight.search,
              ),
              const SizedBox(height: 30),
              const FilterWidget(),
              const SizedBox(height: 40),
              const Text(
                'Recent',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              Expanded(
                child: ListView.builder(
                  itemCount: recentSearches.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          recentSearches[index],
                          style: const TextStyle(
                              color: Color(0xFFB3B1B0),
                              fontSize: 18,
                              height: 0.11),
                        ),
                        const Icon(
                          IconlyLight.closeSquare,
                          size: 27,
                          color: Color(0xFFB3B1B0),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
