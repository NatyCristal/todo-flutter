import 'package:flutter/cupertino.dart';

class Row2Components extends StatelessWidget {
  final double width;
  final Widget firstWidget;
  final Widget secondWidget;
  final dynamic alignment;
  const Row2Components(
      {Key? key,
      required this.firstWidget,
      required this.secondWidget,
      this.width = 0,
      this.alignment = MainAxisAlignment.spaceBetween})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: alignment,
        children: [firstWidget, secondWidget],
      ),
    );
  }
}
