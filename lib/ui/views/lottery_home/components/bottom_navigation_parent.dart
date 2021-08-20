import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/config/colors.dart';
import 'package:flutter_lottery_app_ui/core/utils/arc_clipper.dart';

/// Bottom Navigation Parent Widgte
class BottomNavigationParent extends StatelessWidget {
  ///
  const BottomNavigationParent({
    Key? key,
    required this.child,
  }) : super(key: key);

  /// Child Widget
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Positioned(
      bottom: 0,
      child: RotatedBox(
        quarterTurns: 2,
        child: ClipPath(
          clipper: ArcClipper(),
          child: Container(
            width: size.width,
            height: 80,
            color: kPrimaryColor,
            child: Center(child: child),
          ),
        ),
      ),
    );
  }
}
