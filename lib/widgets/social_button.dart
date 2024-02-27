import 'package:flutter/material.dart';
import 'package:flutter_responsive_login_ui/pallete.dart';
import 'package:flutter_svg/svg.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final double horizontalPadding;
  const SocialButton(
      {super.key,
      required this.iconPath,
      required this.label,
      this.horizontalPadding = 100});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: SvgPicture.asset(
        iconPath,
        width: 25,
        color: Pallete.whiteColor,
      ),
      label: Text(
        label,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w300,
          color: Pallete.whiteColor,
        ),
      ),
      // style:ButtonStyle(),
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: horizontalPadding,
        ),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Pallete.borderColor,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
