import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Image Box
class FlagBox extends StatelessWidget {
  ///
  const FlagBox({
    Key? key,
    required this.image,
  }) : super(key: key);

  /// Flag image path
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35.w,
      height: 20.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
