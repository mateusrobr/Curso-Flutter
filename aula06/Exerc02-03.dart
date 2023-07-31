import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<dynamic, dynamic> mapReceitas = {
      "Sobremesa": [
        "Torta de Maçã",
        " Mousse de Chocolate",
        "Pudim de Leite Condensado"
      ],
      "Pratos Principais": [
        "Frango Assado com Batatas",
        "Espaguete à Bolonhesa",
        "Risoto de Cogumelos"
      ],
      "Aperitivos": [
        "Bolinhos de Queijo",
        "Bruschetta de Tomate e Manjericão",
        "Canapés de Salmão com Cream Cheese"
      ]
    };
    return Scaffold(
        appBar: AppBar(title: Text("Minhas Receitas")),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: mapReceitas.entries
                .map((elemento) => Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Center(
                          child: Text(
                            elemento.key,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                        ),
                        for (String receinta in elemento.value)
                          Text(
                            receinta,
                            style: TextStyle(fontSize: 18),
                          ),
                      ],
                    ))
                .toList()));
  }
}
