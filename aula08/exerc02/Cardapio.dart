import 'package:flutter/material.dart';
import 'TelaPratoEspecifico.dart';

class Cardapio extends StatefulWidget {
  const Cardapio({super.key});

  @override
  State<Cardapio> createState() => _CardapioState();
}

class _CardapioState extends State<Cardapio> {
  final formKey = GlobalKey<FormState>();
  int? choice = 4;
  TextEditingController nomePratoController = TextEditingController();
  final Map<dynamic, dynamic> mapReceitas = {
    "Sobremesa": [
      "Torta de Maçã",
      "Mousse de Chocolate",
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
  final Map<dynamic, dynamic> mapDescricaoPratos = {
    "Torta de Maçã":
        "Triture a bolacha no processador (pode ser no liquidificador) e adicione a margarina até obter uma farofa úmida e homogênea.",
    "Mousse de Chocolate":
        "Coloque no liquidificador o creme de leite, o leite condensado e o chocolate em pó.\nBata por aproximadamente 2 minutos.",
    "Pudim de Leite Condensado":
        "Primeiro, bata bem os ovos no liquidificador.\nAcrescente o leite condensado e o leite, e bata novamente.",
    "Frango Assado com Batatas":
        "Coloque o frango em uma travessa e tempere com o alho, sal, pimenta-do-reino, orégano e o vinagre.",
    "Espaguete à Bolonhesa":
        "Coloque uma panela com água salgada para ferver, adicione o espaguete e cozinhe-o de acordo com as instruções do pacote.",
    "Risoto de Cogumelos":
        "Esquente o azeite, frite o alho, em seguida a cebola, depois coloque o cogumelo, adicione a metade do vinho, o tomate, o salsão, meio copo do caldo de legumes e deixe cozinhar até ficarem macios. Na sequencia coloque o arroz, o restante do caldo de legumes, o vinho que sobrou, a pimenta-do-reino moída na hora e o sal. Mexa constantemente.",
    "Bolinhos de Queijo":
        "Em uma panela, adicione o leite, a farinha de trigo, a margarina, a gema e o sal.",
    "Bruschetta de Tomate e Manjericão":
        "Preaqueça o forno a 180 ºC (temperatura média).",
    "Canapés de Salmão com Cream Cheese":
        "Pique o salmão em cubinhos e os coloque em um recipiente."
  };

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    nomePratoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Minhas Receitas")),
      body: Center(
        child: Column(children: [
          Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    labelText: "Pesquisa Pratos", hintText: "Digite um prato"),
                controller: nomePratoController,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: ElevatedButton(
                    child: Text("Procurar"),
                    onPressed: () {
                      String dialogShow = "";
                      if (mapDescricaoPratos
                          .containsKey(nomePratoController.text)) {
                        dialogShow =
                            mapDescricaoPratos[nomePratoController.text];
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TelaPratoEspecifico(
                                    nomePrato: nomePratoController.text,
                                    modoPreparo: dialogShow)));
                      } else {
                        dialogShow = "Digite um prato existente!";
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Text(dialogShow),
                              );
                            });
                      }
                    }),
              )
            ],
          ),
          Column(
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
                                  child: Padding(
                                    padding: const EdgeInsets.all(3),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    TelaPratoEspecifico(
                                                        nomePrato: "teste",
                                                        modoPreparo: "teste")));
                                      },
                                      child: Container(
                                        child: ReceitaText(receita: receita),
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(colors: [
                                          Color(0xFF0061ff),
                                          Color(0xFF60efff)
                                        ])),
                                        padding: const EdgeInsets.all(2),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                          ],
                        )
                      ],
                    ))
                .toList(),
          )
        ]),
      ),
    );
  }
}

class ReceitaText extends StatelessWidget {
  const ReceitaText({
    super.key,
    required this.receita,
  });

  final String receita;

  @override
  Widget build(BuildContext context) {
    return Text(
      receita,
      style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold),
    );
  }
}
