import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/helpers/ui_helpers.dart';

///Lotteris List View Parent Container
class LotteriesListParent extends StatelessWidget {
  ///
  const LotteriesListParent({
    Key? key,
    required this.child,
  }) : super(key: key);

  /// The child List Widget
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(top: size.height * 0.2),
      padding: const EdgeInsets.only(top: 30, bottom: 75),
      decoration: topRoundeDecore,
      child: child,
    );
  }
}
