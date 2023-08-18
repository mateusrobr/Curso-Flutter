import 'package:flutter/material.dart';

class Cardapio extends StatefulWidget {
  const Cardapio({super.key});

  @override
  State<Cardapio> createState() => _CardapioState();
}

class _CardapioState extends State<Cardapio> {
  final formKey = GlobalKey<FormState>();
  int? choice = 4;
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

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Minhas receitas"),
        ),
        body: Column(
          children: [
            Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SingleForm(choiceValueSetter: (value) => choice = value)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text("Choice"),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState?.save();
                  }
                  setState(() {});
                },
              ),
            ),
            getCorrectCardapio()
          ],
        ));
  }

  Column getCorrectCardapio() {
    print(choice);
    if (choice == 4) {
      return Column();
    }
    if (choice == null) {
      return Column(
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
              .toList());
    }
    String? stringChoice = mapReceitas.keys.toList()[(choice ?? 0) - 1];

    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              stringChoice!,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          for (String receita in mapReceitas[stringChoice])
            Text(
              receita,
              style: TextStyle(fontSize: 18),
            ),
        ]);
  }
}

class SingleForm extends StatelessWidget {
  const SingleForm({super.key, required this.choiceValueSetter});

  final void Function(int? value) choiceValueSetter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(labelText: "Teste"),
      onSaved: (newValue) => choiceValueSetter(int.tryParse(newValue ?? '0')),
      validator: (value) {
        int? validacao = int.tryParse(value!);

        if (value == '') {
        } else if (validacao == null) {
          return "Coloque um numero!";
        } else if (validacao < 1 || validacao > 3) {
          return "Coloque um numero entre 1 e 3";
        }
        return null;
      },
    );
  }
}
