import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/helpers/ui_helpers.dart';

///Lotteris List View Parent Container
class RoundedParentBox extends StatelessWidget {
  ///
  const RoundedParentBox({
    Key? key,
    required this.child,
    required this.heightRatio,
    required this.bottomPadding,
  }) : super(key: key);

  /// The child List Widget
  final Widget child;

  /// Hieght ratio of size of Device Height
  final double heightRatio;

  /// Hieght ratio of size of Device Height
  final double bottomPadding;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(top: size.height * heightRatio),
      padding: EdgeInsets.only(bottom: bottomPadding),
      decoration: topRoundeDecore,
      child: child,
    );
  }
}
