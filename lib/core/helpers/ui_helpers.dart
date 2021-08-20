import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/config/colors.dart';

/// Text Style For the heading across the app
const TextStyle headingTextStyle = TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 18,
);

/// White Bg Border radius used across app
final BoxDecoration rounderCorcerWhoteboxDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  color: Colors.white,
);

/// lotteryNameStyle
const TextStyle lotteryNameStyle =
    TextStyle(color: Colors.black87, fontSize: 18, fontWeight: FontWeight.w500);

/// size 14 Grey Text Style
const TextStyle size14GreytextStyle =
    TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500);

/// Lottery Amount Style
const TextStyle amoutTextStyle =
    TextStyle(color: kPrimaryColor, fontSize: 18, fontWeight: FontWeight.w500);

/// Top Rounded Container Decoration
const BoxDecoration topRoundeDecore = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(20),
    topLeft: Radius.circular(20),
  ),
);
