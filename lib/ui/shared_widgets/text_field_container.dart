import 'package:flutter/material.dart';

/// Constainer Widget For the Text Field
class TextFieldContainer extends StatelessWidget {
  ///
  const TextFieldContainer({Key? key, this.child}) : super(key: key);

  /// Child Input Widget
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.7,
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: const Color(0xFFebeaf5),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.grey[400]!),
      ),
      child: child,
    );
  }
}
