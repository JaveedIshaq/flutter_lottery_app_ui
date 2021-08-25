import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/data/lottery_list.dart';
import 'package:flutter_lottery_app_ui/ui/views/lottery_home/components/bottom_navigation.dart';
import 'package:flutter_lottery_app_ui/ui/views/lottery_home/components/bottom_navigation_parent.dart';
import 'package:flutter_lottery_app_ui/ui/shared_widgets/rounded_parent_box.dart';
import 'package:flutter_lottery_app_ui/ui/views/lottery_home/components/lottery_item_list_tile.dart';
import 'package:flutter_lottery_app_ui/ui/views/lottery_home/components/lottery_ticket_header.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///Lottery Home Body Widget
class LotteryHomeBody extends StatelessWidget {
  /// Constructor values
  const LotteryHomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          const LotteryTicketHeader(),
          RoundedParentBox(
            heightRatio: 0.2,
            bottomPadding: 75.h,
            child: ListView.builder(
              itemCount: upcomingLotteriesList.length,
              itemBuilder: (BuildContext context, int index) {
                return LotteryItemListTile(
                    lottery: upcomingLotteriesList[index]);
              },
            ),
          ),
          const BottomNavigationParent(
            child: BottomNavigation(),
          ),
        ],
      ),
    );
  }
}
