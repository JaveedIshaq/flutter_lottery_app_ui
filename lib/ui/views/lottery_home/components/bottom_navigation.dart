import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/config/colors.dart';
import 'package:flutter_lottery_app_ui/ui/views/lottery_home/components/bottom_navigation_icon.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// BottomNavigation
class BottomNavigation extends StatelessWidget {
  ///Constructor
  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          const BottomNavigationIcon(
            icon: Icons.person_outline,
            iconColor: Colors.white,
            iconbGColor: kPrimaryColor,
          ),
          BottomNavigationIcon(
            icon: Icons.home_outlined,
            iconColor: Colors.white,
            iconbGColor: kPrimaryColor,
            marginBottom: 30.h,
          ),
          const BottomNavigationIcon(
            icon: Icons.ac_unit,
            iconColor: kPrimaryColor,
            iconbGColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
