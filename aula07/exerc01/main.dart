import 'package:flutter/material.dart';

void main() => runApp(StartScreen());

class StartScreen extends StatelessWidget {
  StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("ContainerCustomizado"),
          ),
          body: Container(
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: Border.all(
                    color: Colors.red,
                    width: 30.0,
                  ) +
                  Border.all(
                    color: Colors.green,
                    width: 40.0,
                  ) +
                  Border.all(
                    color: Colors.blue,
                    width: 50.0,
                  ),
            ),
            child: const Text('Teste', textAlign: TextAlign.center),
          )),
    );
  }
}
