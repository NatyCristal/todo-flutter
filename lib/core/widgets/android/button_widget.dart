import 'package:flutter/material.dart';
import 'package:todo/core/theme/colors.dart';
import 'package:todo/core/theme/styles.dart';

class Button extends StatelessWidget {
  final String title;
  final Function actionButton;
  const Button({Key? key, required this.title, required this.actionButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: ElevatedButton(
          style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              minimumSize: MaterialStateProperty.all(Size(
                  MediaQuery.of(context).size.width > 200
                      ? MediaQuery.of(context).size.width * 0.6
                      : 200,
                  40)),
              backgroundColor: MaterialStateProperty.all(backGroundButton)),
          onPressed: () => actionButton(),
          child: Text(
            title,
            style: const TextStyle(color: corDeAcao),
          )),
    );
  }
}
