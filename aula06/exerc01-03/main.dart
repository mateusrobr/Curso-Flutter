import 'package:flutter/material.dart';

import 'Home.dart';

void main() => runApp(Fodsae());

class Fodsae extends StatelessWidget {
  Fodsae({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
