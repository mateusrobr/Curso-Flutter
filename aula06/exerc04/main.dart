import 'package:flutter/material.dart';

import 'Cardapio.dart';

void main() => runApp(StartScreen());

class StartScreen extends StatelessWidget {
  StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Cardapio(),
    );
  }
}
