import 'package:flutter/material.dart';
import 'package:todo_application/presentation/shared_widgets/my_icon.dart';

class MyIconButton extends StatelessWidget {
  final MyIcon icon;
  final VoidCallback? onClicked;
  const MyIconButton({required this.icon, this.onClicked, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onClicked,
      icon: icon,
    );
  }
}
