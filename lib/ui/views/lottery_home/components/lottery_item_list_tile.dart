import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/helpers/ui_helpers.dart';
import 'package:flutter_lottery_app_ui/core/models/lottery_model.dart';
import 'package:flutter_lottery_app_ui/ui/views/lottery_home/components/flag_box.dart';
import 'package:flutter_lottery_app_ui/ui/views/lottery_home/components/list_tile_parent.dart';
import 'package:flutter_lottery_app_ui/ui/views/lottery_home/components/play_now_button.dart';

/// Lottery Item
class LotteryItemListTile extends StatelessWidget {
  ///
  const LotteryItemListTile({Key? key, required this.lottery})
      : super(key: key);

  /// Lottery Item
  final Lottery lottery;

  @override
  Widget build(BuildContext context) {
    return ListTileParent(
      child: ListTile(
        onTap: () {},
        leading: Image.asset(lottery.logo!),
        title: Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  lottery.name!,
                  style: lotteryNameStyle,
                ),
                const SizedBox(height: 5),
                Text(
                  lottery.type!,
                  style: size14GreytextStyle,
                ),
                const SizedBox(height: 5),
                Text(
                  lottery.amount!,
                  style: amoutTextStyle,
                ),
              ],
            ),
            const SizedBox(width: 18),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FlagBox(
                  image: lottery.flag!,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Next Draw',
                  style: size14GreytextStyle,
                ),
                Text(
                  lottery.nextDrawTime!,
                  style: size14GreytextStyle.copyWith(color: Colors.black87),
                ),
              ],
            ),
          ],
        ),
        trailing: const PlayNowButton(),
      ),
    );
  }
}
