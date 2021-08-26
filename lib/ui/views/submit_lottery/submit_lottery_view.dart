import 'dart:math';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/config/colors.dart';
import 'package:flutter_lottery_app_ui/core/helpers/ui_helpers.dart';
import 'package:flutter_lottery_app_ui/ui/shared_widgets/background.dart';
import 'package:flutter_lottery_app_ui/ui/shared_widgets/navigate_back_button.dart';
import 'package:flutter_lottery_app_ui/ui/shared_widgets/rounded_large_button.dart';
import 'package:flutter_lottery_app_ui/ui/shared_widgets/text_field_container.dart';
import 'package:flutter_lottery_app_ui/ui/views/choose_number_view/components/number_in_circle.dart';
import 'package:flutter_lottery_app_ui/ui/views/result_view/lottery_result_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Lottery Result View
class SubmitLotteryView extends StatefulWidget {
  /// constructure
  const SubmitLotteryView({
    Key? key,
  }) : super(key: key);

  @override
  _SubmitLotteryViewState createState() => _SubmitLotteryViewState();
}

class _SubmitLotteryViewState extends State<SubmitLotteryView> {
  String drawDate = '';
  DateTime selectedDate = DateTime.now();
  bool birthDateError = false;

  Future<void> _selectDate(BuildContext context) async {
    final DateFormat f = DateFormat('dd MMM yy');

    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1945),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        drawDate = f.format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Align(
                alignment: Alignment.topLeft,
                child: NavigateBackButton(title: 'See Result'),
              ),
              SizedBox(height: 50.h),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    //height: size.height * 0.6,
                    width: size.width * 0.81,
                    decoration: rounderCorcerWhoteboxDecoration,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(height: 50.h),
                          TextFieldContainer(
                            child: InkWell(
                              onTap: () {},
                              child: SizedBox(
                                height: 50.h,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        const Icon(
                                          Icons.ac_unit,
                                          color: iconColor,
                                        ),
                                        SizedBox(width: 10.w),
                                        const Text('Jackpots'),
                                        const Spacer(),
                                        const RotatedBox(
                                          quarterTurns: 3,
                                          child: Icon(
                                            Icons.arrow_back_ios,
                                            color: iconColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          TextFieldContainer(
                            child: InkWell(
                              onTap: () {
                                _selectDate(context);
                                setState(() {
                                  birthDateError = false;
                                });
                              },
                              child: SizedBox(
                                height: 50.h,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        const Icon(
                                          Icons.date_range,
                                          color: iconColor,
                                        ),
                                        SizedBox(width: 10.w),
                                        Text(drawDate.toString()),
                                        const Spacer(),
                                        const Icon(
                                          Icons.date_range_outlined,
                                          color: iconColor,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 12.w),
                              child: Text(
                                'Enter your Number',
                                style: grey15textStyle,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Wrap(
                            children: <Widget>[
                              NumberInCircle(
                                onTap: () {},
                                number: '05',
                                selected: false,
                              ),
                              NumberInCircle(
                                onTap: () {},
                                number: '09',
                                selected: false,
                              ),
                              NumberInCircle(
                                onTap: () {},
                                number: '12',
                                selected: false,
                              ),
                              NumberInCircle(
                                onTap: () {},
                                number: '18',
                                selected: false,
                              ),
                              NumberInCircle(
                                onTap: () {},
                                number: '21',
                                selected: false,
                              )
                            ],
                          ),
                          SizedBox(height: 30.h),
                          RoundedLargeButton(
                            title: 'See Result',
                            textColor: Colors.white,
                            bgColor: kPrimaryColor,
                            widthRatio: 0.60,
                            onTap: () {
                              final Random r = Random();
                              final bool result = r.nextDouble() <= 0.7;
                              Navigator.push(
                                context,
                                MaterialPageRoute<dynamic>(
                                  builder: (BuildContext context) =>
                                      LotteryResultView(
                                    winStatus: result,
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(height: 50.h),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
