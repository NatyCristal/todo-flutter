import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:tarefa/core/theme/colors.dart';
import 'package:tarefa/core/widgets/android/components/painter_componente.dart';
import 'package:tarefa/modules/tarefa/presentation/android/store/add_todo_store.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/utils/utils.dart';

class ColorWidget extends StatelessWidget {
  final AddTodoStore store;
  const ColorWidget({
    Key? key,
    required this.store,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backGroundCards),
          elevation: MaterialStateProperty.all(2),
          overlayColor: MaterialStateProperty.all(const Color(0xFFE9E9E9))),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text(
                "Escolha uma cor",
                style: TextStyle(color: titleTextColor),
              ),
              content: SingleChildScrollView(
                child: Container(
                  padding: padding,
                  decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: BlockPicker(
                    availableColors: selectedColors,
                    pickerColor: store.colorPicker,
                    onColorChanged: (value) {
                      store.tempColor = value;
                    },
                  ),
                ),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("CANCELAR")),
                TextButton(
                  onPressed: () {
                    store.colorPicker = store.tempColor;
                    Navigator.pop(context);
                  },
                  child: const Text("OK"),
                )
              ],
            );
          },
        );
      },
      icon: const PainterComponent(),
      label: const Text(
        "Selecione uma cor",
        style: TextStyle(color: secondTextColor),
      ),
    );
  }
}
