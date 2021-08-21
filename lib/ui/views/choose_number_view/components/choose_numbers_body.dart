import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/config/colors.dart';
import 'package:flutter_lottery_app_ui/core/helpers/ui_helpers.dart';
import 'package:flutter_lottery_app_ui/ui/shared_widgets/rounded_large_button.dart';
import 'package:flutter_lottery_app_ui/ui/shared_widgets/rounded_parent_box.dart';
import 'package:flutter_lottery_app_ui/ui/views/choose_number_view/components/chose_number_header.dart';
import 'package:flutter_lottery_app_ui/ui/views/choose_number_view/components/number_in_circle.dart';
import 'package:flutter_lottery_app_ui/ui/views/choose_number_view/components/select_button.dart';
import 'package:flutter_lottery_app_ui/ui/views/payment_view/lottery_payment_view.dart';
import 'package:fluttertoast/fluttertoast.dart';

/// [ChoseNumbersBody] it is the Body widget for ChooseNumbers View Screen
class ChoseNumbersBody extends StatefulWidget {
  ///
  const ChoseNumbersBody({Key? key}) : super(key: key);

  @override
  _ChoseNumbersBodyState createState() => _ChoseNumbersBodyState();
}

class _ChoseNumbersBodyState extends State<ChoseNumbersBody> {
  List<String> selectedNumbers = <String>[];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          ChoseNumbersHeader(selectedNumbers: selectedNumbers),
          RoundedParentBox(
            heightRatio: 0.35,
            bottomPadding: 0,
            child: Container(
              width: size.width,
              height: size.height,
              decoration: topRoundeDecore,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 20),
                    buildTimeRow(),
                    const SizedBox(height: 10),
                    Wrap(
                      children: List<Widget>.generate(
                          30,
                          (int index) => NumberInCircle(
                                number: '${index + 1}',
                                selected:
                                    selectedNumbers.contains('${index + 1}'),
                                onTap: () {
                                  if (selectedNumbers.length < 5) {
                                    setState(() {
                                      selectedNumbers.add('${index + 1}');
                                    });
                                  } else {
                                    Fluttertoast.showToast(
                                      msg: 'You have selected 5 numbers',
                                      gravity: ToastGravity.BOTTOM,
                                      backgroundColor: kPrimaryColor,
                                    );
                                  }
                                },
                              )),
                    ),
                    RoundedLargeButton(
                      title: 'Make a Payment',
                      textColor: Colors.white,
                      bgColor: kPrimaryColor,
                      widthRatio: 0.70,
                      onTap: () {
                        if (selectedNumbers.length < 5) {
                          Fluttertoast.showToast(
                            msg: 'Please Select 5 numbers',
                            gravity: ToastGravity.BOTTOM,
                            backgroundColor: kPrimaryColor,
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  LotteryPaymentView(
                                      selectedNumbers: selectedNumbers),
                            ),
                          );
                        }
                      },
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Time and Select Button Row
  Widget buildTimeRow() {
    final DateTime now = DateTime.now();
    final String formattedDate = DateFormat('kk:mm a').format(now);
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            formattedDate,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SelectButton(
            title: 'Single',
          ),
        ],
      ),
    );
  }
}
