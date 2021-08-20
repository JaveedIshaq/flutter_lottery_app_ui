import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/ui/views/lottery_home/components/bottom_navigation_icon.dart';

/// BottomNavigation
class BottomNavigation extends StatelessWidget {
  ///Constructor
  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: <Widget>[
        const BottomNavigationIcon(
          icon: Icons.person_outline,
        ),
        const BottomNavigationIcon(
          icon: Icons.home_outlined,
          padding: 20,
        ),
        const BottomNavigationIcon(
          icon: Icons.ac_unit,
        ),
      ],
    );
  }
}
