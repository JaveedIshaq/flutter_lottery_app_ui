import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/config/colors.dart';

/// Bottom Navigation Icon Box
class BottomNavigationIcon extends StatelessWidget {
  /// Widget Constructor
  const BottomNavigationIcon({
    Key? key,
    required this.icon,
    this.padding = 1,
  }) : super(key: key);

  /// Icon
  final IconData icon;

  /// Padding from Bottom
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: padding!, left: 20, right: 20),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: kPrimaryColor.withOpacity(0.5),
          onTap: () {},
          child: RotatedBox(
            quarterTurns: 2,
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
