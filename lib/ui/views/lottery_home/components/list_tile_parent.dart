import 'package:flutter/material.dart';

/// Lottery Item List Tile Parent Widget
class ListTileParent extends StatelessWidget {
  ///
  const ListTileParent({Key? key, required this.child}) : super(key: key);

  /// Child Widget
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 10, top: 10),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey),
          ),
        ),
        child: child);
  }
}
