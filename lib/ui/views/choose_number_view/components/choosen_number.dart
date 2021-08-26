import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/helpers/ui_helpers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// User Chosed Number inside a rounded white Box
class ChoosenNumber extends StatelessWidget {
  ///
  const ChoosenNumber({
    Key? key,
    required this.number,
  }) : super(key: key);

  /// Number choosed by User
  final String number;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.w),
      height: 55.h,
      width: 40.w,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: Center(
        child: Text(number, style: chosedNumberStyle),
      ),
    );
  }
}
