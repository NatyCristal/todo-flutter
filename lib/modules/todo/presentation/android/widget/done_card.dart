import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todo/core/theme/colors.dart';
import 'package:todo/core/theme/styles.dart';
import 'package:todo/core/widgets/android/row_widget.dart';
import 'package:todo/modules/todo/presentation/android/store/add_todo_store.dart';
import 'package:todo/modules/todo/presentation/android/widget/color_widget.dart';

class DoneCard extends StatelessWidget {
  final AddTodoStore store;

  const DoneCard({
    Key? key,
    required this.store,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            color: backGroundCards,
            borderRadius: BorderRadius.circular(14),
          ),
          width: MediaQuery.of(context).size.width,
          child: SizedBox(
              width: 160,
              child: Observer(builder: (context) {
                return CheckboxListTile(
                    activeColor: const Color(0xFFFCE0DB),
                    title: const Text(
                      "Concluído",
                      style: TextStyle(color: secondTextColor),
                    ),
                    value: store.checkbox,
                    onChanged: (value) {
                      store.checkbox == true
                          ? store.checkbox = false
                          : store.checkbox = true;
                    });
              })),
        ),
        Row2Components(
          firstWidget: ColorWidget(store: store),
          secondWidget: Observer(builder: (context) {
            return Container(
              margin: margin,
              decoration: BoxDecoration(
                  border: Border.all(color: secondTextColor),
                  borderRadius: BorderRadius.circular(4),
                  color: store.colorPicker),
              alignment: Alignment.centerLeft,
              height: 20,
              width: 60,
            );
          }),
        ),
      ],
    );
  }
}
