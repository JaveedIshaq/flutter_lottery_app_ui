import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/config/colors.dart';
import 'package:flutter_lottery_app_ui/core/helpers/ui_helpers.dart';
import 'package:flutter_lottery_app_ui/ui/shared_widgets/background.dart';
import 'package:flutter_lottery_app_ui/ui/shared_widgets/navigate_back_button.dart';
import 'package:flutter_lottery_app_ui/ui/shared_widgets/rounded_large_button.dart';
import 'package:flutter_lottery_app_ui/ui/views/choose_number_view/components/number_in_circle.dart';
import 'package:flutter_lottery_app_ui/ui/views/submit_lottery/submit_lottery_view.dart';

/// Lottery Result View
class LotteryPaymentView extends StatelessWidget {
  /// constructure
  const LotteryPaymentView({
    Key? key,
    required this.selectedNumbers,
  }) : super(key: key);

  /// selected Numbers List
  final List<String> selectedNumbers;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final DateTime now = DateTime.now();
    final String formattedDate = DateFormat('kk:mm a').format(now);

    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Align(
                alignment: Alignment.topLeft,
                child: NavigateBackButton(title: 'Payment'),
              ),
              const SizedBox(height: 50),
              Text(
                formattedDate,
                style: headingTextStyle.copyWith(color: Colors.white),
              ),
              const SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: size.width * 0.8,
                    decoration: rounderCorcerWhoteboxDecoration,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const SizedBox(height: 50),
                          Text('Selected Numbers', style: grey16textStyle),
                          const SizedBox(height: 10),
                          SizedBox(
                            height: 30,
                            child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: selectedNumbers.length,
                                itemBuilder: (BuildContext contex, int index) {
                                  return Text('${selectedNumbers[index]}, ',
                                      style: headingTextStyle.copyWith(
                                          fontSize: 22));
                                }),
                          ),

                          const SizedBox(height: 20),
                          Text(
                            'Number Of Draws',
                            style: grey15textStyle,
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              NumberInCircle(
                                onTap: () {},
                                number: '1',
                                selected: true,
                              ),
                              NumberInCircle(
                                onTap: () {},
                                number: '2',
                                selected: true,
                              ),
                              NumberInCircle(
                                onTap: () {},
                                number: '3',
                                selected: true,
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          Text('Possible Winners', style: grey15textStyle),
                          // ignore: use_raw_strings
                          const Text('\$100 - \$1200'),
                          const SizedBox(height: 50),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Text(
                // ignore: use_raw_strings
                'Total : \$10',
                style: headingTextStyle.copyWith(color: Colors.white),
              ),
              const SizedBox(height: 20),
              RoundedLargeButton(
                title: 'Payment Now',
                textColor: kPrimaryColor,
                bgColor: Colors.white,
                widthRatio: 0.60,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const SubmitLotteryView(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
