import 'package:flutter/material.dart';

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
      width: 60,
      height: 30,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
