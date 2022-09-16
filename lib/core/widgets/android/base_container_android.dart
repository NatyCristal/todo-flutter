import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:side_navigation/side_navigation.dart';
import 'package:todo/core/theme/colors.dart';
import '../../utils/breakpoints.dart';

class BaseContainerAndroid extends StatefulWidget {
  final Function? functionActionButton;
  final bool showFloatingActionButton;
  final List<Widget> listaWidgets;
  final String title;
  final bool existsDrawer;

  const BaseContainerAndroid(
      {Key? key,
      required this.listaWidgets,
      required this.title,
      this.showFloatingActionButton = false,
      this.functionActionButton,
      required this.existsDrawer})
      : super(key: key);

  @override
  State<BaseContainerAndroid> createState() => _BaseContainerAndroidState();
}

class _BaseContainerAndroidState extends State<BaseContainerAndroid> {
  List<Widget> views2 = [];

  teste(index) {
    switch (index) {
      case 0:
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...widget.listaWidgets,
              ],
            ),
          ),
        );
      case 1:
        return const Center(
          child: Text('Arquivados'),
        );
      case 2:
        return const Center(
          child: Text('Lixeira'),
        );
      default:
        break;
    }
  }

  int selectedIndex = 0;
  bool fecharCard = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        drawer: widget.existsDrawer ? const Drawer() : null,
        appBar: getSizeWidthDevice(context) >= desktop
            ? AppBar(
                iconTheme: const IconThemeData(color: corDeAcao),
                leading: IconButton(
                  icon: const Icon(
                    Icons.menu_rounded,
                  ),
                  onPressed: () {
                    setState(() {
                      fecharCard ? fecharCard = false : fecharCard = true;
                    });
                  },
                ),
                actions: [
                  getSizeWidthDevice(context) >= desktop
                      ? const SizedBox()
                      : IconButton(
                          onPressed: () => Modular.to.pushNamed("archive"),
                          icon: const Icon(
                            Icons.more_vert_rounded,
                            color: titleTextColor,
                          ),
                        ),
                ],
                elevation: 1,
                backgroundColor: backGroundCards,
                title: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 100),
                      child: Text(
                        widget.title,
                        style: const TextStyle(color: titleTextColor),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: 400,
                      child: Container(
                        //  padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: backgroundColor,
                            border:
                                Border.all(width: 10, color: backgroundColor)),
                        child: TextField(
                          onChanged: (value) {},
                          decoration: const InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.all(8),
                              icon: Icon(Icons.search),
                              border: InputBorder.none,
                              hintText: "Pesquise em tarefas"),
                          style: const TextStyle(color: secondTextColor),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : AppBar(
                iconTheme: const IconThemeData(color: corDeAcao),
                actions: [
                  IconButton(
                    onPressed: () => Modular.to.pushNamed("archive"),
                    icon: const Icon(
                      Icons.more_vert_rounded,
                      color: titleTextColor,
                    ),
                  ),
                ],
                elevation: 1,
                backgroundColor: backGroundCards,
                title: Text(
                  widget.title,
                  style: const TextStyle(color: titleTextColor),
                ),
              ),
        body: MediaQuery.of(context).size.width >= desktop
            ? Row(
                children: [
                  SideNavigationBar(
                    selectedIndex: selectedIndex,
                    items: const [
                      SideNavigationBarItem(
                        icon: Icons.lightbulb_outline_rounded,
                        label: 'Notas',
                      ),
                      SideNavigationBarItem(
                        icon: Icons.archive_outlined,
                        label: 'Arquivados',
                      ),
                      SideNavigationBarItem(
                        icon: Icons.delete_outline,
                        label: 'Lixeira',
                      ),
                    ],
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                  Expanded(
                    child: teste(selectedIndex),
                  ),
                ],
              )
            : SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...widget.listaWidgets,
                    ],
                  ),
                ),
              ),
        floatingActionButton: widget.showFloatingActionButton &&
                getSizeWidthDevice(context) <= desktop
            ? FloatingActionButton(
                onPressed: () {
                  if (widget.functionActionButton != null) {
                    widget.functionActionButton!();
                  }
                },
                child: const Icon(Icons.add),
              )
            : null,
      ),
    );
  }
}
