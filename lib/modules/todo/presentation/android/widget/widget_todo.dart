import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo/core/theme/colors.dart';
import 'package:todo/core/theme/styles.dart';
import 'package:todo/core/utils/utils.dart';
import 'package:todo/core/widgets/android/row_widget.dart';
import 'package:todo/modules/todo/presentation/android/store/add_todo_store.dart';
import 'package:todo/modules/todo/presentation/android/widget/done_card.dart';

class WidgetToDo extends StatelessWidget {
  final AddTodoStore store;
  const WidgetToDo({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: selectedColors[0], borderRadius: BorderRadius.circular(10)),
      padding: padding,
      margin: margin,
      child: Column(
        children: [
          Observer(builder: (context) {
            return TextField(
                onChanged: (value) {
                  store.todoName = value;
                },
                decoration: InputDecoration(
                    errorText:
                        store.hasErroNameTodo ? store.errorNameTodo : null,
                    labelText: "Nome da Tarefa",
                    hintText: "Nome da Tarefa"));
          }),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row2Components(
              firstWidget: const Text(
                "_______________",
              ),
              secondWidget: GestureDetector(
                onTap: () {
                  Modular.to.pushNamed("calendar");
                },
                child: Container(
                  width: 120,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: backGroundCards,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: secondTextColor),
                  ),
                  child: Row2Components(
                    firstWidget: Text(
                      "Calendário",
                      style: TextStyle(color: titleTextColor.withOpacity(0.8)),
                    ),
                    secondWidget: const Icon(
                      Icons.calendar_today,
                      size: 18,
                      color: titleTextColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const TextField(
            decoration: InputDecoration(
                labelText: "Observação", hintText: "Observação"),
          ),
          DoneCard(store: store),
        ],
      ),
    );
  }
}
