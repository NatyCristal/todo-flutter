import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo/core/utils/breakpoints.dart';
import 'package:todo/core/widgets/android/base_container_android.dart';
import 'package:todo/core/widgets/android/search_widget.dart';
import 'package:todo/modules/todo/presentation/android/store/home_page_store.dart';
import 'package:todo/modules/todo/presentation/android/store/search_store.dart';
import 'package:todo/modules/todo/presentation/android/widget/desktop/add_note_desktop.dart';
import 'package:todo/modules/todo/presentation/android/widget/desktop/container_create_note.dart';
import 'package:todo/modules/todo/presentation/android/widget/grid_view_todo.dart';

class HomePageAndroid extends StatelessWidget {
  final HomePageStore store;
  const HomePageAndroid({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: BaseContainerAndroid(
        existsDrawer: true,
        showFloatingActionButton: true,
        functionActionButton: () {
          Modular.to.pushNamed('include-todo');
        },
        listaWidgets: [
          getSizeWidthDevice(context) >= desktop
              ? Observer(builder: (context) {
                  return store.createNewNote
                      ? GestureDetector(
                          onTap: () {
                            if (FocusManager.instance.primaryFocus != null) {
                              print("sadkjhjkfsdjkhfsdhjkfsd");
                              store.createNewNote = false;
                            }
                            print("oi");
                          },
                          child: AddNoteDesktop(
                            store: store,
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            if (FocusManager.instance.primaryFocus != null) {
                              print("sadkjhjkfsdjkhfsdhjkfsd");
                              store.createNewNote = false;
                            }
                            print("oi");
                          },
                          child: CreateNoteWidget(store: store));
                })
              : ShearchWidget(
                  store: SearchStore(), textSearch: "Pesquise em tarefas"),
          GridBuilderTodo(
            scrollController: ScrollController(),
            store: store,
          ),
        ],
        title: "Tarefa",
      ),
    );
  }
}
