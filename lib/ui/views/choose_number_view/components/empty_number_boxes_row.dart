import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/ui/views/choose_number_view/components/choosen_number.dart';

/// Empty Number Boxes Row
class EmptyNuberBoxesRow extends StatelessWidget {
  ///
  const EmptyNuberBoxesRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        ChoosenNumber(number: ''),
        ChoosenNumber(number: ''),
        ChoosenNumber(number: ''),
        ChoosenNumber(number: ''),
        ChoosenNumber(number: ''),
      ],
    );
  }
}
