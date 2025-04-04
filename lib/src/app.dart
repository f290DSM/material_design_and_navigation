import 'package:flutter/material.dart';
import 'package:material_design_and_navigation/src/features/home/presentation/home_page.dart';

import 'features/impopar/impopar_page.dart';
import 'features/insanelubutton/insanely_button_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.red,
          brightness: Brightness.light,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/insanely': (context) => InsanelyButtonPage(),
        '/impopar': (context) => ImpoParPage(),
      },
    );
  }
}
