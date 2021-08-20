import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/ui/shared_widgets/background.dart';
import 'package:flutter_lottery_app_ui/ui/views/lottery_ticket/components/lttery_ticket_body.dart';

///Lottery Ticket View, Current Entry Point of the App
class LotteryTicketView extends StatelessWidget {
  ///
  const LotteryTicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Background(
        child: LotteryTicketBody(),
      ),
    );
  }
}
