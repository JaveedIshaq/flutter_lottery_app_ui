import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/helpers/ui_helpers.dart';

/// User Chosed Number inside a rounded white Box
class ChoosenNumber extends StatelessWidget {
  ///
  const ChoosenNumber({
    Key? key,
    required this.number,
  }) : super(key: key);

  /// Number choosed by User
  final String number;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      height: 65,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: Center(
        child: Text(number, style: chosedNumberStyle),
      ),
    );
  }
}
