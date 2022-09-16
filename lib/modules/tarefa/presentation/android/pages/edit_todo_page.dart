import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tarefa/core/widgets/android/base_container_android.dart';
import 'package:tarefa/modules/tarefa/domain/entity/todo_entity.dart';

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
