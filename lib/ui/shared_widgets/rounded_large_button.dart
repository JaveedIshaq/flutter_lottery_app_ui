import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/config/colors.dart';

/// Play Now Button Widget
class RoundedLargeButton extends StatelessWidget {
  ///
  const RoundedLargeButton({
    Key? key,
    required this.title,
    required this.bgColor,
    required this.textColor,
    required this.widthRatio,
    required this.onTap,
  }) : super(key: key);

  /// Button title
  final String title;

  /// Button Background Color
  final Color bgColor;

  /// Button Text Color
  final Color textColor;

  /// Button Text Color
  final double widthRatio;

  /// onTap Function
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        splashColor: kPrimaryColor,
        child: Container(
          width: MediaQuery.of(context).size.width * widthRatio,
          margin: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 17),
              child: Text(
                title,
                style: TextStyle(color: textColor, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
