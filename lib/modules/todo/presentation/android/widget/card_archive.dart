import 'package:flutter/material.dart';
import 'package:todo/core/theme/colors.dart';
import 'package:todo/core/theme/styles.dart';
import 'package:todo/core/widgets/android/row_widget.dart';

class CardArchive extends StatelessWidget {
  const CardArchive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(15),
      padding: padding,
      decoration: BoxDecoration(
          color: backGroundCards, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Nome da Tarefa",
            style: TextStyle(color: titleTextColor),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row2Components(
                firstWidget: const Text(
                  "24/08/2022",
                  style: TextStyle(color: secondTextColor),
                ),
                secondWidget: SizedBox(
                  width: 160,
                  child: CheckboxListTile(
                    title: const Text(
                      "Concluída",
                      style: TextStyle(color: secondTextColor),
                    ),
                    value: true,
                    onChanged: ((value) {}),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
