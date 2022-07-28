import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  final IconData icon;
  final Color? iconColor;
  final double? iconSize;
  const MyIcon({
    Key? key,
    required this.icon,
    this.iconSize,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: iconColor,
      size: iconSize,
    );
  }
}
