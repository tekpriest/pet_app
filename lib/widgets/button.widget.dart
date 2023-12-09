import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String social;
  final String? name;
  final Function()? onTap;
  SocialButton({super.key, required this.social, this.name, this.onTap});

  final List<Widget> _children = [];
  double imageWidth = 35;
  double buttonPadding = 10;

  @override
  Widget build(BuildContext context) {
    if (name == null) {
      imageWidth = 160;
      buttonPadding = 0;
    }
    _children.add(Image.asset(
      "assets/imgs/$social.png",
      width: imageWidth,
    ));
    if (name != null) {
      _children.add(const SizedBox(
        width: 10,
      ));
      _children.add(
        Text(
          name!,
          style: const TextStyle(
            color: Color(0xFF337EFE),
            fontSize: 23,
            fontWeight: FontWeight.w600,
            height: 0.07,
          ),
        ),
      );
    }
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 80,
        width: 180,
        padding: EdgeInsets.all(buttonPadding),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(
              color: Color(0xFFE5E4E3),
              width: 1.3,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: _children,
        ),
      ),
    );
  }
}
