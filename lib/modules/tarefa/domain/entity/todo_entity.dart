import 'package:flutter/widgets.dart';

class ToDo {
  String data;
  String todoName;
  String observations;
  Color color;
  bool completed;
  String time;

  ToDo(
      {required this.time,
      required this.data,
      required this.todoName,
      required this.observations,
      required this.color,
      required this.completed});
}
