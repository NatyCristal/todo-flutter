import 'package:flutter/material.dart';
import 'package:todo/core/theme/colors.dart';
import 'package:todo/core/theme/styles.dart';
import 'package:todo/core/widgets/android/row_widget.dart';

class DrawerItem extends StatelessWidget {
  final Function navigatorAction;
  final String text;
  final IconData icon;
  const DrawerItem(
      {Key? key,
      required this.text,
      this.icon = Icons.abc,
      required this.navigatorAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigatorAction,
      child: Container(
          padding: padding,
          child: icon != Icons.abc
              ? Text(
                  text,
                  style: const TextStyle(color: titleTextColor),
                )
              : Row2Components(
                  firstWidget: Icon(icon), secondWidget: Text(text))),
    );
  }
}
