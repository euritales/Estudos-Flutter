import 'package:first_project/app_controller.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login_page.dart'; //Import Component

class Appwidget extends StatelessWidget {
  const Appwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              // brightness: AppController.instance.isDarkTheme 
              // ? Brightness.dark 
              // : Brightness.light,
              brightness: Brightness.dark,
               primaryColor: Colors.blueGrey ),
          // theme: ThemeData.dark(),
          home: const LoginPage(), //Componente Home
        );
      },
    );
  }
}
