import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/config/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Text Style For the heading across the app
TextStyle headingTextStyle = TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 18.sp,
);

/// White Bg Border radius used across app
final BoxDecoration rounderCorcerWhoteboxDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(20.r),
  color: Colors.white,
);

/// lotteryNameStyle
TextStyle lotteryNameStyle = TextStyle(
    color: Colors.black87, fontSize: 18.sp, fontWeight: FontWeight.w500);

/// size 14 Grey Text Style
TextStyle size14GreytextStyle =
    TextStyle(color: Colors.grey, fontSize: 14.sp, fontWeight: FontWeight.w500);

/// Lottery Amount Style
TextStyle amoutTextStyle = TextStyle(
    color: kPrimaryColor, fontSize: 14.sp, fontWeight: FontWeight.w500);

/// Top Rounded Container Decoration
BoxDecoration topRoundeDecore = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(20.r),
    topLeft: Radius.circular(20.r),
  ),
);

/// Navigate Back Button Text Style
TextStyle navigateBackButtontextStyle =
    TextStyle(color: Colors.white, fontSize: 12.sp);

/// Chosen Number Style shown rounded white Box
TextStyle chosedNumberStyle = TextStyle(
  color: kPrimaryColor,
  fontWeight: FontWeight.w700,
  fontSize: 18.sp,
);

/// Text Style for 16 Font Size and Color grey

final TextStyle grey16textStyle = TextStyle(
  fontSize: 16.sp,
  color: Colors.grey[700],
);

/// Text Style for 15 Font Size and Color grey

final TextStyle grey15textStyle = TextStyle(
  fontSize: 15.sp,
  color: Colors.grey[700],
);
