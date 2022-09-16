import 'package:flutter_modular/flutter_modular.dart';
import 'package:tarefa/modules/tarefa/presentation/android/pages/add_todo_page.dart';
import 'package:tarefa/modules/tarefa/presentation/android/pages/calendar_page.dart';
import 'package:tarefa/modules/tarefa/presentation/android/pages/edit_todo_page.dart';
import 'package:tarefa/modules/tarefa/presentation/android/pages/home_page.dart';
import 'package:tarefa/modules/tarefa/presentation/android/pages/todo_completed_page.dart';
import 'package:tarefa/modules/tarefa/presentation/android/store/add_todo_store.dart';
import 'package:tarefa/modules/tarefa/presentation/android/store/home_page_store.dart';

class TodoModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => HomePageAndroid(
            store: HomePageStore(),
          ),
        ),
        ChildRoute(
          '/include-todo',
          child: (context, args) => AddTodoPage(store: AddTodoStore()),
        ),
        ChildRoute(
          '/archive',
          child: (context, args) => const TodoFiledPage(),
        ),
        ChildRoute(
          '/calendar',
          child: (context, args) => const CalendarPage(),
        ),
        ChildRoute(
          '/edit-todo',
          child: (context, args) => EditTodoPage(todo: args.data[0]),
        ),
      ];
}
