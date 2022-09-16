import 'package:flutter/material.dart';

showAlertSnackBar(BuildContext context, String content) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: Text(content),
    ),
  );
}

showAlertDialog(BuildContext context, String title, String textContent,
    List<Widget> buttons) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
          actions: buttons, title: Text(title), content: Text(textContent));
    },
  );
}
