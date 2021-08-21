import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/config/colors.dart';
import 'package:flutter_lottery_app_ui/ui/views/lottery_home/lottery_home_view.dart';

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
        debugShowCheckedModeBanner: false,
        title: 'Flutter Lottery App UI',

        /// This is the theme of your application.
        theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.light,
          primaryColor: kPrimaryColor,
          fontFamily: 'Roboto',
        ),
        home: const LotteryHomeView());
  }
}
