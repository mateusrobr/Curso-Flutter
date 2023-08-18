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
      appBar: AppBar(title: Text("Minhas Receitas")),
      body: Center(
        child: Column(
          children: mapReceitas.entries
              .map((element) => Column(
                    children: [
                      Card(
                        child: Text(
                          element.key,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          for (String receita in element.value)
                            Expanded(
                                flex: 2,
                                child: SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  child: Container(
                                    child: Text(
                                      receita,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                      Color(0xFF0061ff),
                                      Color(0xFF60efff)
                                    ])),
                                    padding: const EdgeInsets.all(2),
                                  ),
                                ))
                        ],
                      )
                    ],
                  ))
              .toList(),
        ),
      ),
    );
  }
}

class SingleForm extends StatelessWidget {
  const SingleForm({super.key, required this.choiceValueSetter});

  final void Function(int? value) choiceValueSetter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(labelText: "Selecione um numero de 1 a 3"),
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

// import 'package:flutter/material.dart';

// class Cardapio extends StatefulWidget {
//   const Cardapio({super.key});

//   @override
//   State<Cardapio> createState() => _CardapioState();
// }

// class _CardapioState extends State<Cardapio> {
//   final formKey = GlobalKey<FormState>();
//   int? choice = 4;
//   final Map<dynamic, dynamic> mapReceitas = {
//     "Sobremesa": [
//       "Torta de Maçã",
//       " Mousse de Chocolate",
//       "Pudim de Leite Condensado"
//     ],
//     "Pratos Principais": [
//       "Frango Assado com Batatas",
//       "Espaguete à Bolonhesa",
//       "Risoto de Cogumelos"
//     ],
//     "Aperitivos": [
//       "Bolinhos de Queijo",
//       "Bruschetta de Tomate e Manjericão",
//       "Canapés de Salmão com Cream Cheese"
//     ]
//   };

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Minhas receitas"),
//         ),
//         body: Column(children: [
//           Form(
//             key: formKey,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SingleForm(choiceValueSetter: (value) => choice = value)
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: SizedBox(
//               height: MediaQuery.of(context).size.height * 0.07,
//               width: MediaQuery.of(context).size.width * 0.3,
//               child: ElevatedButton(
//                 child: Text("Choice"),
//                 onPressed: () {
//                   if (formKey.currentState!.validate()) {
//                     formKey.currentState?.save();
//                   }
//                   setState(() {});
//                 },
//               ),
//             ),
//           ),
//           Column(
//             children: mapReceitas.entries
//                 .map((element) => SizedBox(
//                       height: MediaQuery.of(context).size.height * 0.23,
//                       width: 300,
//                       child: Container(
//                         decoration: BoxDecoration(
//                             gradient: LinearGradient(colors: [
//                           Color(0xFF0061ff),
//                           Color(0xFF60efff),
//                         ])),
//                         child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.stretch,
//                             children: [
//                               Center(
//                                 child: Text(
//                                   element.key,
//                                   style: TextStyle(
//                                       fontSize: 24,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                               for (String receitas in element.value)
//                                 Padding(
//                                   padding: const EdgeInsets.all(1.0),
//                                   child: Text(
//                                     receitas,
//                                     style: TextStyle(fontSize: 17),
//                                   ),
//                                 )
//                             ]),
//                         margin: EdgeInsets.all(5),
//                       ),
//                     ))
//                 .toList(),
//           ),
//         ]));
//   }
// }

// class SingleForm extends StatelessWidget {
//   const SingleForm({super.key, required this.choiceValueSetter});

//   final void Function(int? value) choiceValueSetter;

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       decoration: InputDecoration(labelText: "Selecione um numero de 1 a 3"),
//       onSaved: (newValue) => choiceValueSetter(int.tryParse(newValue ?? '0')),
//       validator: (value) {
//         int? validacao = int.tryParse(value!);

//         if (value == '') {
//         } else if (validacao == null) {
//           return "Coloque um numero!";
//         } else if (validacao < 1 || validacao > 3) {
//           return "Coloque um numero entre 1 e 3";
//         }
//         return null;
//       },
//     );
//   }
// }
