import 'package:flutter/material.dart';

class RowsAndColumns extends StatelessWidget {
  const RowsAndColumns({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO: 3 bandeiras com listras ou faixas

    return Scaffold(
      appBar: AppBar(title: Text('Fun With Flags')),
      body: ListView(
        children: [
          Chile(),
          Italia(),
          Brasil(),
          BurkinaFaso(),
          Colombia(),
          Denmark(),
        ],
      ),
    );
  }
}

class Chile extends StatelessWidget {
  const Chile({super.key});

  @override
  Widget build(BuildContext context) {
    return Bandeira(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    constraints: BoxConstraints.expand(),
                    color: Colors.blue,
                    child: Icon(Icons.star, color: Colors.white, size: 75),
                  ),
                ),
                Expanded(flex: 2, child: Container(color: Colors.white)),
              ],
            ),
          ),
          Expanded(child: Container(color: Colors.red)),
        ],
      ),
    );
  }
}

class BurkinaFaso extends StatelessWidget {
  const BurkinaFaso({super.key});

  @override
  Widget build(BuildContext context) {
    return Bandeira(
      child: Stack(
        alignment: Alignment(0, 0),
        children: [
          Column(
            children: [
              Expanded(child: Container(color: Colors.red)),
              Expanded(child: Container(color: Colors.green)),
            ],
          ),
          Icon(Icons.star, color: Colors.yellow, size: 75),
        ],
      ),
    );
  }
}

class Italia extends StatelessWidget {
  const Italia({super.key});

  @override
  Widget build(BuildContext context) {
    return Bandeira(
      child: Row(
        children: [
          Expanded(child: Container(color: Colors.red)),
          Expanded(child: Container(color: Colors.white)),
          Expanded(child: Container(color: Colors.green)),
        ],
      ),
    );
  }
}

class Colombia extends StatelessWidget {
  const Colombia({super.key});

  @override
  Widget build(BuildContext context) {
    return Bandeira(
      child: Column(
        children: [
          Expanded(flex: 2, child: Container(color: Colors.yellow)),
          Expanded(child: Container(color: Colors.blue)),
          Expanded(child: Container(color: Colors.red)),
        ],
      ),
    );
  }
}

class Denmark extends StatelessWidget {
  const Denmark({super.key});

  @override
  Widget build(BuildContext context) {
    return Bandeira(
      child: Stack(
        alignment: Alignment(0, 0),
        children: [
          Expanded(child: Container(color: Colors.red)),
          Container(width: double.maxFinite, height: 40, color: Colors.white),
          Positioned(
            left: 120,
            top: 0,
            child: Container(
              width: 40,
              height: double.maxFinite,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class Brasil extends StatelessWidget {
  const Brasil({super.key});

  @override
  Widget build(BuildContext context) {
    return Bandeira(
      child: Stack(
        alignment: Alignment(0, 0),
        children: [
          Expanded(child: Container(color: Colors.green)),
          Transform.rotate(
            angle: 45 * 3.1416 / 180,
            child: Container(width: 150, height: 150, color: Colors.yellow),
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(50),
            ),
            child: UnconstrainedBox(
              child: Container(width: 100, height: 10, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class Bandeira extends StatelessWidget {
  const Bandeira({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: AspectRatio(aspectRatio: 5 / 3, child: child),
    );
  }
}
