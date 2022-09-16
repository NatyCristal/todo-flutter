import 'package:flutter/widgets.dart';
import 'package:tarefa/core/widgets/android/base_container_android.dart';
import 'package:tarefa/modules/tarefa/presentation/android/widget/card_archive.dart';

class TodoFiledPage extends StatefulWidget {
  const TodoFiledPage({Key? key}) : super(key: key);

  @override
  State<TodoFiledPage> createState() => _TodoFiledPageState();
}

class _TodoFiledPageState extends State<TodoFiledPage> {
  @override
  Widget build(BuildContext context) {
    return const BaseContainerAndroid(
        existsDrawer: false,
        listaWidgets: [CardArchive()],
        title: "Concluídas");
  }
}
