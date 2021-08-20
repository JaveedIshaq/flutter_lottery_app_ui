import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/config/colors.dart';

/// Background Widget for Screen
class Background extends StatelessWidget {
  ///Constructor widget
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  /// Screen Child Widget
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.05), BlendMode.dstATop),
          image: const AssetImage(
            'assets/images/billiared-bg.png',
          ),
        ),
      ),
      child: child,
    );
  }
}
