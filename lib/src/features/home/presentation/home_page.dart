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
            _CustomButton(label: 'Insanely Button', route: '/insanely'),
            _CustomButton(label: 'ImpoPar Button', route: '/impopar'),
            _CustomButton(label: 'Fun With Flags', route: '/rowscolumns'),
          ],
        ),
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  final String label;
  final String route;
  const _CustomButton({required this.label, required this.route});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () => Navigator.pushNamed(context, route),
      child: Text(label),
    );
  }
}
