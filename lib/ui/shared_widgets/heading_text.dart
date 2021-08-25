import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/helpers/ui_helpers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Heading Text Widget Accrss the App
class HeadingText extends StatelessWidget {
  ///constructor
  const HeadingText({
    Key? key,
    required this.text,
    required this.textColor,
  }) : super(key: key);

  /// text String
  final String text;

  /// text Color
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: headingTextStyle.copyWith(color: textColor),
      ),
    );
  }
}
