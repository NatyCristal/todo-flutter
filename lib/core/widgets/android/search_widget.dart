import 'package:flutter/material.dart';
import 'package:tarefa/core/theme/colors.dart';
import 'package:tarefa/core/theme/styles.dart';
import 'package:tarefa/core/widgets/android/row_widget.dart';
import 'package:tarefa/modules/tarefa/presentation/android/store/search_store.dart';

class ShearchWidget extends StatelessWidget {
  final SearchStore store;
  final String textSearch;
  const ShearchWidget({Key? key, required this.textSearch, required this.store})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: const BoxDecoration(color: backGroundCards),
      child: Row2Components(
        firstWidget: SizedBox(
          width: 200,
          child: TextField(
            onChanged: (value) {},
            decoration: InputDecoration(
                icon: const Icon(Icons.search),
                border: InputBorder.none,
                hintText: textSearch),
            style: const TextStyle(color: secondTextColor),
          ),
        ),
        secondWidget: const Icon(
          Icons.search,
          color: secondTextColor,
        ),
      ),
    );
  }
}
