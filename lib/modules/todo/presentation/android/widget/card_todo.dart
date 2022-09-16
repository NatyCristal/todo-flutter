import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo/core/theme/styles.dart';
import 'package:todo/core/widgets/android/row_widget.dart';
import 'package:todo/modules/todo/domain/entity/todo_entity.dart';

class CardTodo extends StatelessWidget {
  final ToDo todo;

  const CardTodo({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Modular.to.pushNamed("edit-todo", arguments: [todo]);
      },
      child: Container(
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(todo.color.value).withOpacity(0.3),
            border: Border.all(color: todo.color)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: cardData,
            ),
            const SizedBox(
              height: 10,
            ),
            Row2Components(
                firstWidget: Text(
                  todo.data,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                secondWidget: Text(
                  todo.time,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ))
          ],
        ),
      ),
    );
  }

  List<Widget> get cardData {
    return [
      Center(
        child: Text(
          textAlign: TextAlign.center,
          todo.todoName,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        todo.observations,
        style: const TextStyle(fontWeight: FontWeight.w400),
      ),
    ];
  }
}
