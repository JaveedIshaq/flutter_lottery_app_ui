import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/config/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Play Now Button Widget
class PlayNowButton extends StatelessWidget {
  ///
  const PlayNowButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h),
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(20.r)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
        child: Text(
          'Play Now',
          style: TextStyle(color: Colors.white, fontSize: 13.sp),
        ),
      ),
    );
  }
}
