import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:todo/core/utils/breakpoints.dart';
import 'package:todo/modules/todo/presentation/android/store/home_page_store.dart';
import 'package:todo/modules/todo/presentation/android/widget/card_todo.dart';

class GridBuilderTodo extends StatelessWidget {
  final ScrollController scrollController;
  final HomePageStore store;

  const GridBuilderTodo(
      {Key? key, required this.store, required this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: MediaQuery.of(context).size.width >= desktop
          ? Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: StaggeredGrid.extent(
                crossAxisSpacing: 0,
                mainAxisSpacing: 0,
                maxCrossAxisExtent: 200,
                children: [
                  for (int i = 0; i < store.tarefas.length; i++)
                    StaggeredGridTile.fit(
                      crossAxisCellCount: 2,
                      child: CardTodo(
                        todo: store.tarefas[i],
                      ),
                    ),
                ],
              ),
            )
          : StaggeredGrid.count(
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              crossAxisCount: MediaQuery.of(context).size.width >= tablet
                  ? 6
                  : MediaQuery.of(context).size.width <= watch
                      ? 1
                      : 4,
              children: [
                for (int i = 0; i < store.tarefas.length; i++)
                  StaggeredGridTile.fit(
                    crossAxisCellCount: 2,
                    child: CardTodo(
                      todo: store.tarefas[i],
                    ),
                  ),
              ],
            ),
    );
    // return SizedBox(
    //   width: MediaQuery.of(context).size.width,
    //   height: MediaQuery.of(context).size.height,
    //   child: ReorderableGridView.count(
    //     crossAxisSpacing: 10,
    //     mainAxisSpacing: 10,
    //     crossAxisCount: 2,
    //     shrinkWrap: false,
    //     controller: widget.scrollController,
    //     // children: widget.data.map((e) => buildItem("$e")).toList(),
    //     children: [
    //       for (int i = 0; i < widget.store.tarefas.length; i++)
    //         StaggeredGridTile.fit(
    //             key: ValueKey(i),
    //             crossAxisCellCount: 2,
    //             child: CardTodo(
    //               todo: widget.store.tarefas[i],
    //             )),
    //     ],
    //     onReorder: (oldIndex, newIndex) {
    //       setState(() {
    //         final element = widget.store.tarefas.removeAt(oldIndex);
    //         widget.store.tarefas.insert(newIndex, element);
    //       });
    //     },
    //   ),
    // );

    // SizedBox(
    //   width: MediaQuery.of(context).size.width,
    //   height: MediaQuery.of(context).size.height,
    //   child: ReorderableGridView.count(
    //     crossAxisSpacing: 10,
    //     mainAxisSpacing: 10,
    //     crossAxisCount: 2,
    //     shrinkWrap: false,
    //     controller: widget.scrollController,
    //     // children: widget.data.map((e) => buildItem("$e")).toList(),
    //     children: [
    //       for (int i = 0; i < widget.store.tarefas.length; i++)
    //         StaggeredGridTile.fit(
    //             key: ValueKey(i),
    //             crossAxisCellCount: 2,
    //             child: CardTodo(
    //               todo: widget.store.tarefas[i],
    //             )),
    //     ],
    //     onReorder: (oldIndex, newIndex) {
    //       setState(() {
    //         final element = widget.store.tarefas.removeAt(oldIndex);
    //         widget.store.tarefas.insert(newIndex, element);
    //       });

//Funciona
    // return SizedBox(
    //   width: MediaQuery.of(context).size.width,
    //   height: MediaQuery.of(context).size.height,
    //   child: StaggeredGrid.count(
    //     crossAxisSpacing: 0,
    //     mainAxisSpacing: 0,
    //     crossAxisCount: 4,
    //     children: [
    //       for (int i = 0; i < store.tarefas.length; i++)
    //         StaggeredGridTile.fit(
    //             crossAxisCellCount: 2,
    //             child: CardTodo(
    //               todo: store.tarefas[i],
    //               reorder: (value) {},
    //             )),
    //     ],
    //   ),
    // );
  }
}
