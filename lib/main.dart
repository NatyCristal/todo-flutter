import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo/app_module.dart';
import 'package:todo/core/theme/theme.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        // locale: Localizations.localeOf(context),
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
        title: 'Tarefa',
        debugShowCheckedModeBanner: false,
        theme: getAndroidTheme());
  }
}
