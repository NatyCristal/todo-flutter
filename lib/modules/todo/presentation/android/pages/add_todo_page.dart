import 'package:flutter/material.dart';
import 'package:todo/core/utils/alerts.dart';
import 'package:todo/core/widgets/android/base_container_android.dart';
import 'package:todo/core/widgets/android/button_widget.dart';
import 'package:todo/modules/todo/presentation/android/store/add_todo_store.dart';
import 'package:todo/modules/todo/presentation/android/widget/widget_todo.dart';

class AddTodoPage extends StatelessWidget {
  final AddTodoStore store;
  const AddTodoPage({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseContainerAndroid(
      listaWidgets: [
        WidgetToDo(store: store),
        Button(
            title: "Salvar Tarefa",
            actionButton: () async {
              await buttonAction(context);
            }),
      ],
      title: "Incluir",
      existsDrawer: false,
    );
  }

  Future<void> buttonAction(BuildContext context) async {
    showAlertDialog(context, "Verificar dados",
        "verifique se os dados estão corretos antes de salvar.", [
      TextButton(
        onPressed: () => Navigator.pop(context),
        child: const Text(
          "CANCELAR",
        ),
      ),
      TextButton(
        onPressed: () async {
          if (store.canSave()) {
            await Future.delayed(const Duration(seconds: 1)).then((value) {
              Navigator.pop(context);
              showAlertSnackBar(context, "Tarefa salva com sucesso!");
            });
          } else {
            Navigator.pop(context);
          }
        },
        child: const Text(
          "SALVAR",
        ),
      )
    ]);
  }
}
