import 'package:device_preview/plugins.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lottery_app_ui/core/config/colors.dart';
import 'package:flutter_lottery_app_ui/ui/views/lottery_home/lottery_home_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(
      DevicePreview(
        // ignore: avoid_redundant_argument_values
        enabled: true,
        plugins: const <DevicePreviewPlugin>[
          ScreenshotPlugin(),
        ],
        builder: (BuildContext context) => MyApp(), // Wrap your app
      ),
    );

///This is the Entry Point Of the APP
// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  // ignore: prefer_expression_function_bodies
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: () => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Lottery App UI',

          /// This is the theme of your application.
          theme: ThemeData(
            // Define the default brightness and colors.
            brightness: Brightness.light,
            primaryColor: kPrimaryColor,
            fontFamily: 'Roboto',
          ),
          locale: DevicePreview.locale(context), // Add the locale here
          builder: DevicePreview.appBuilder,
          home: const LotteryHomeView()),
    );
  }
}
