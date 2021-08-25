import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/ui/shared_widgets/background.dart';
import 'package:flutter_lottery_app_ui/ui/views/lottery_home/components/lottery_home_body.dart';

///Lottery Ticket View, Current Entry Point of the App
class LotteryHomeView extends StatelessWidget {
  ///
  const LotteryHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    // ignore: avoid_print
    print('Device width is: ${size.width}');
    // ignore: avoid_print
    print('Device height is: ${size.height}');
    return const Scaffold(
      body: Background(
        child: LotteryHomeBody(),
      ),
    );
  }
}
