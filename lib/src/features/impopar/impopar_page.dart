import 'package:flutter/material.dart';

class ImpoParPage extends StatefulWidget {
  const ImpoParPage({super.key});

  @override
  State<ImpoParPage> createState() => _ImpoParPageState();
}

class _ImpoParPageState extends State<ImpoParPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('ImpoPar'),),);
  }
}