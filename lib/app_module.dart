import 'package:flutter_modular/flutter_modular.dart';
import 'package:tarefa/core/theme/splash.dart';
import 'package:tarefa/modules/tarefa/presentation/todo_module.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/',
            transition: TransitionType.leftToRight,
            child: (context, args) => const Splash()),
        ModuleRoute('/tarefa', module: TodoModule()),
      ];
}
