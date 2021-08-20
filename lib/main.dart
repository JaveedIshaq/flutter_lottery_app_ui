import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/ui/views/result_view/lottery_result_view.dart';

void main() {
  runApp(MyApp());
}

///This is the Entry Point Of the APP
// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  // ignore: prefer_expression_function_bodies
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Lottery App UI',

      /// This is the theme of your application.
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: const LotteryResultView(
        winStatus: false,
      ),
    );
  }
}
