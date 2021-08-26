import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/config/colors.dart';
import 'package:flutter_lottery_app_ui/core/helpers/ui_helpers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// User Chosed Number inside a rounded white Box
class NumberInCircle extends StatelessWidget {
  ///
  const NumberInCircle({
    Key? key,
    required this.number,
    required this.selected,
    required this.onTap,
  }) : super(key: key);

  /// Number choosed by User
  final String number;

  /// Number is Selected OR NOT Bool
  final bool selected;

  /// Number Color
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.r),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.grey,
          onTap: onTap,
          child: Container(
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(
              color: selected ? kPrimaryColor : Colors.white,
              borderRadius: BorderRadius.circular(25.r),
              border: Border.all(color: selected ? kPrimaryColor : Colors.grey),
            ),
            child: Center(
              child: Text(
                number,
                style: selected
                    ? chosedNumberStyle.copyWith(color: Colors.white)
                    : chosedNumberStyle.copyWith(color: Colors.black87),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
