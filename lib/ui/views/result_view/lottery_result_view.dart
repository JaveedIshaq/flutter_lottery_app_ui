import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/helpers/ui_helpers.dart';
import 'package:flutter_lottery_app_ui/ui/shared_widgets/background.dart';
import 'package:flutter_lottery_app_ui/ui/shared_widgets/heading_text.dart';

/// Lottery Result View
class LotteryResultView extends StatefulWidget {
  /// constructure
  const LotteryResultView({Key? key, required this.winStatus})
      : super(key: key);

  /// Lottery Winning Status true or false
  final bool winStatus;

  @override
  _LotteryResultViewState createState() => _LotteryResultViewState();
}

class _LotteryResultViewState extends State<LotteryResultView> {
  String resultHeading = '';
  // ignore: use_raw_strings
  String resultAmoutInfo = '';
  String imageName = '';

  @override
  void initState() {
    super.initState();

    setValues();
  }

  void setValues() {
    if (widget.winStatus) {
      setState(() {
        resultHeading = 'Congratulations! You are\n a Big Winner...';
        // ignore: use_raw_strings
        resultAmoutInfo = 'You Get \$2500';
        imageName = 'win';
      });
    } else {
      setState(() {
        resultHeading = 'Ops! You Lose\nLottery...';
        // ignore: use_raw_strings
        resultAmoutInfo = 'You Lose \$10';
        imageName = 'lose';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: size.height * 0.6,
                  width: size.width * 0.8,
                  decoration: rounderCorcerWhoteboxDecoration,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        HeadingText(
                          text: resultHeading,
                          textColor: Colors.black87,
                        ),
                        Image.asset('assets/images/$imageName.png'),
                        HeadingText(
                          text: resultAmoutInfo,
                          textColor: Colors.black87,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
