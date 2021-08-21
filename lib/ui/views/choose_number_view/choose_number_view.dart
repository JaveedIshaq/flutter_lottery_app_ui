import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/ui/shared_widgets/background.dart';
import 'package:flutter_lottery_app_ui/ui/views/choose_number_view/components/choose_numbers_body.dart';

/// ChooseLotteryNumbersView
/// This Screen contains number to Choose From
/// User needs to 5 numbers
class ChooseLotteryNumbersView extends StatelessWidget {
  /// Costucture Values
  const ChooseLotteryNumbersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Background(
        child: ChoseNumbersBody(),
      ),
    );
  }
}
