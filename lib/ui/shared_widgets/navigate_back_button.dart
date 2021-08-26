import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/config/colors.dart';
import 'package:flutter_lottery_app_ui/core/helpers/ui_helpers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Navigate to Back Screen Button
class NavigateBackButton extends StatelessWidget {
  ///
  const NavigateBackButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  /// Button title which Shows name of Current Scree
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.h, bottom: 15.h),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            splashColor: kPrimaryColor.withOpacity(0.5),
            child: Padding(
              padding: EdgeInsets.all(8.h),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 20.w,
                  ),
                  Text(title, style: navigateBackButtontextStyle)
                ],
              ),
            )),
      ),
    );
  }
}
