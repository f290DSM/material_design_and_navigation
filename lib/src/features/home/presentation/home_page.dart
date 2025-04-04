import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AppBar')),
      drawer: Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                Navigator.pushNamed(context, '/insanely');
              },
              child: Text('Insanely Button'),
            ),
            FilledButton(
              onPressed: () {
                Navigator.pushNamed(context, '/impopar');
              },
              child: Text('ImpoPar Button'),
            ),
          ],
        ),
      ),
    );
  }
}
