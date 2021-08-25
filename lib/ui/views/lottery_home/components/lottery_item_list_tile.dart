import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/helpers/ui_helpers.dart';
import 'package:flutter_lottery_app_ui/core/models/lottery_model.dart';
import 'package:flutter_lottery_app_ui/ui/views/choose_number_view/choose_number_view.dart';
import 'package:flutter_lottery_app_ui/ui/views/lottery_home/components/flag_box.dart';
import 'package:flutter_lottery_app_ui/ui/views/lottery_home/components/list_tile_parent.dart';
import 'package:flutter_lottery_app_ui/ui/views/lottery_home/components/play_now_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Lottery Item
class LotteryItemListTile extends StatelessWidget {
  ///
  const LotteryItemListTile({Key? key, required this.lottery})
      : super(key: key);

  /// Lottery Item
  final Lottery lottery;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return ListTileParent(
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<dynamic>(
                builder: (BuildContext context) =>
                    const ChooseLotteryNumbersView()),
          );
        },
        title: Row(
          children: <Widget>[
            Image.asset(
              lottery.logo!,
              width: 45.w,
              height: 45.sp,
            ),
            SizedBox(width: 5.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  lottery.name!,
                  style: lotteryNameStyle,
                ),
                SizedBox(height: 5.h),
                Text(
                  lottery.type!,
                  style: size14GreytextStyle,
                ),
                SizedBox(height: 5.h),
                Text(
                  lottery.amount!,
                  style: amoutTextStyle,
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FlagBox(
                  image: lottery.flag!,
                ),
                SizedBox(height: 10.h),
                Text(
                  'Next Draw',
                  style: size14GreytextStyle,
                ),
                Text(
                  lottery.nextDrawTime!,
                  style: size14GreytextStyle.copyWith(color: Colors.black87),
                ),
              ],
            ),
            if (size.width > 360) const Spacer() else Container(),
            const PlayNowButton(),
          ],
        ),
      ),
    );
  }
}
