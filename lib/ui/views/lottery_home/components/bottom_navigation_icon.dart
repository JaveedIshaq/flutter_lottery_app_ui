import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/config/colors.dart';

/// Bottom Navigation Icon Box
class BottomNavigationIcon extends StatelessWidget {
  /// Widget Constructor
  const BottomNavigationIcon({
    Key? key,
    required this.icon,
    this.marginBottom = 0,
    required this.iconColor,
    required this.iconbGColor,
  }) : super(key: key);

  /// Icon
  final IconData icon;

  /// icon color
  final Color iconColor;

  /// Icon Background Color
  final Color iconbGColor;

  /// Padding from Bottom
  final double? marginBottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.only(top: marginBottom!),
      child: RotatedBox(
        quarterTurns: 2,
        child: ClipOval(
          child: Material(
            color: iconbGColor, // Button color
            child: InkWell(
              splashColor: kPrimaryColor.withOpacity(0.5), // Splash color
              onTap: () {},
              child: SizedBox(
                width: 32,
                height: 32,
                child: Icon(
                  icon,
                  color: iconColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
