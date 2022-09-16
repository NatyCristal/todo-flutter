import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((_) async {
      Modular.to
          .pushNamedAndRemoveUntil("/todo/", (Route<dynamic> route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      color: Colors.white,
      child: const Center(
          child: SizedBox(width: 200, height: 200, child: Text("rsrsrs"))),
    ));
  }
}
