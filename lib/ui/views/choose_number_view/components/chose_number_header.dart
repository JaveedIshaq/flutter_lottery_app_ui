import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/ui/shared_widgets/navigate_back_button.dart';
import 'package:flutter_lottery_app_ui/ui/views/choose_number_view/components/choosen_number.dart';
import 'package:flutter_lottery_app_ui/ui/views/choose_number_view/components/empty_number_boxes_row.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Lottery Home View Top Header
class ChoseNumbersHeader extends StatelessWidget {
  ///
  const ChoseNumbersHeader({
    Key? key,
    required this.selectedNumbers,
  }) : super(key: key);

  /// selected Numbers List
  final List<String> selectedNumbers;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Positioned(
      top: 0,
      child: SizedBox(
        width: size.width,
        height: size.height * 0.35,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const NavigateBackButton(title: 'Choose Number'),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  Text(
                    'Choose',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(height: 3.h),
                  const Text(
                    '5 Numbers',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 15.h),
                  if (selectedNumbers.isEmpty)
                    const EmptyNuberBoxesRow()
                  else
                    SizedBox(
                      height: 70.h,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: selectedNumbers.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ChoosenNumber(
                                number: selectedNumbers[index]);
                          }),
                    ),
                  SizedBox(height: 15.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
