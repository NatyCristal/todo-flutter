import 'package:flutter/material.dart';
import 'package:todo/core/widgets/android/base_container_android.dart';
import 'package:todo/modules/todo/domain/entity/todo_entity.dart';

class EditTodoPage extends StatelessWidget {
  final ToDo todo;
  const EditTodoPage({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController title;
    TextEditingController observations;
    return const BaseContainerAndroid(
        listaWidgets: [TextField()], title: "", existsDrawer: false);
  }
}
