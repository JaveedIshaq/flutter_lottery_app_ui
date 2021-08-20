import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/ui/shared_widgets/heading_text.dart';

/// Lottery Home View Top Header
class LotteryTicketHeader extends StatelessWidget {
  ///
  const LotteryTicketHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Positioned(
      top: 0,
      child: SizedBox(
        width: size.width,
        height: size.height * 0.2,
        child: const Center(
          child: HeadingText(
            text: 'Lottery Ticket',
            textColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
