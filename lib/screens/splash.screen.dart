import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:pet_app/helpers/app/colors.dart';

class Pages {
  static List<PageViewModel> pages = [
    _buildPage(
      'Meet your \nanimal needs \nhere ',
      'assets/imgs/page_1.svg',
      'Get interesting promos here, register your account immediately so you can meet your animal needs.',
    ),
    _buildPage(
      'Meet your \nanimal needs \nhere ',
      'assets/imgs/page_2.svg',
      'Get interesting promos here, register your account immediately so you can meet your animal needs.',
    ),
    _buildPage(
      'Meet your \nanimal needs \nhere ',
      'assets/imgs/page_3.svg',
      'Get interesting promos here, register your account immediately so you can meet your animal needs.',
    ),
  ];

  static PageViewModel _buildPage(String title, String asset, String footer) {
    return PageViewModel(
      decoration: PageDecoration(
        bodyAlignment: Alignment.centerLeft,
        titlePadding: const EdgeInsets.only(top: 0),
        bodyPadding: const EdgeInsets.only(top: 0, left: 0, right: 0),
      ),
      title: '',
      // body:
      //     'Get interesting promos here, register your account immediately so you can meet your animal needs.',
      bodyWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.w600,
              // height: 0.03,
            ),
          ),
          Center(
            child: SvgPicture.asset(asset, height: 380, width: 380),
          ),
          Text(
            footer,
            style: TextStyle(
                color: AppColors.textGray,
                fontSize: 17,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final List<PageViewModel> _pages = Pages.pages;

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: _pages,
      showDoneButton: false,
      showNextButton: false,
      controlsPosition: const Position(bottom: 24, right: 24, left: 24),
      globalFooter: GestureDetector(
        onTap: () =>  Navigator.of(context).pushNamed('/auth/login'),
        child: Container(
            height: 60,
            decoration: ShapeDecoration(
              color: Color(AppColors.primary.value),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(31),
              ),
            ),
            child: const Center(
                child: Text(
              "Get Started",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ))),
      ),
      dotsDecorator: DotsDecorator(
          activeColor: AppColors.primary,
          size: Size.square(8),
          color: AppColors.gray),
    );
  }
}
