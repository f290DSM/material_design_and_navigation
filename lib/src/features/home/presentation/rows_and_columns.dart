import 'package:flutter/material.dart';

class RowsAndColumns extends StatelessWidget {
  const RowsAndColumns({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO: 3 bandeiras com listras ou faixas

    return Scaffold(
      appBar: AppBar(title: Text('Fun With Flags')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [AspectRatio(aspectRatio: 5 / 3, child: Column())],
      ),
    );
  }
}
