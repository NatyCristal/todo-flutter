import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo/core/theme/splash.dart';
import 'package:todo/modules/todo/presentation/todo_module.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/',
            transition: TransitionType.leftToRight,
            child: (context, args) => const Splash()),
        ModuleRoute('/todo', module: TodoModule()),
      ];
}
