import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Lottery Item List Tile Parent Widget
class ListTileParent extends StatelessWidget {
  ///
  const ListTileParent({Key? key, required this.child}) : super(key: key);

  /// Child Widget
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: 10.h, top: 10.h),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey),
          ),
        ),
        child: child);
  }
}
