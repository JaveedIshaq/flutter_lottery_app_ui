import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/config/colors.dart';
import 'package:flutter_lottery_app_ui/core/helpers/ui_helpers.dart';

/// Navigate to Back Screen Button
class SelectButton extends StatelessWidget {
  ///
  const SelectButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  /// Button title which Shows name of Current Scree
  final String title;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
          onTap: () {},
          splashColor: kPrimaryColor.withOpacity(0.5),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.black54),
                ),
              ),
              const SizedBox(width: 5),
              const RotatedBox(
                quarterTurns: 3,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black87,
                  size: 15,
                ),
              ),
            ],
          )),
    );
  }
}
