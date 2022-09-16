import 'package:flutter/widgets.dart';
import 'package:tarefa/core/widgets/android/components/drawer_item.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [DrawerItem(text: "Teste", navigatorAction: () {})],
    );
  }
}
