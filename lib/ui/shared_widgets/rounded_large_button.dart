import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/config/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          margin: EdgeInsets.only(top: 10.h),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(30.r),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 17.h),
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
