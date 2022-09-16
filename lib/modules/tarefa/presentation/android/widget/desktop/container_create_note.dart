import 'package:flutter/material.dart';
import 'package:tarefa/core/theme/styles.dart';
import 'package:tarefa/core/utils/breakpoints.dart';
import 'package:tarefa/modules/tarefa/presentation/android/store/home_page_store.dart';

import '../../../../../../core/theme/colors.dart';

class CreateNoteWidget extends StatelessWidget {
  final HomePageStore store;
  const CreateNoteWidget({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        store.createNewNote
            ? store.createNewNote = false
            : store.createNewNote = true;
      },
      child: Container(
        alignment: Alignment.center,
        width: 600,
        padding: padding,
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: 40,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 3,
              offset: const Offset(0, 3),
            ),
          ],
          borderRadius: borderRadius,
          color: backGroundCards,
        ),
        child: SizedBox(
          width: getSizeWidthDevice(context) - 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  SizedBox(
                    width: 260,
                    child: Text(
                      "Criar uma nota...",
                      style: TextStyle(
                        fontSize: 16,
                        color: titleTextColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Text("Eitaaa"),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Qopa"),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Qopa"),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Qopa"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
