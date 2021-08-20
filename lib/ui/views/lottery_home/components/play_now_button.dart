import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/config/colors.dart';

/// Play Now Button Widget
class PlayNowButton extends StatelessWidget {
  ///
  const PlayNowButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(20)),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        child: Text(
          'Play Now',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
