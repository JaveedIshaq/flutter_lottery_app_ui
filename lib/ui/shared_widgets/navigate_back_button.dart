import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/config/colors.dart';
import 'package:flutter_lottery_app_ui/core/helpers/ui_helpers.dart';

/// Navigate to Back Screen Button
class NavigateBackButton extends StatelessWidget {
  ///
  const NavigateBackButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  /// Button title which Shows name of Current Scree
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 15),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            splashColor: kPrimaryColor.withOpacity(0.5),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 20,
                  ),
                  Text(title, style: navigateBackButtontextStyle)
                ],
              ),
            )),
      ),
    );
  }
}
