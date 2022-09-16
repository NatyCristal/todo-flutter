import 'package:flutter/widgets.dart';

const tablet = 600;
const desktop = 950;
const watch = 300;

getSizeWidthDevice(context) {
  return MediaQuery.of(context).size.width;
}
