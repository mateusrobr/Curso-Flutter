class Veiculo{
  String marca;
  String modelo;
  int anoFabricacao;

  Veiculo(this.marca, this.modelo, this.anoFabricacao);

  void printInformacoes(){
    print("Marca: $marca");
    print("Modelo: $modelo");
    print("Ano de fabricação: $anoFabricacao");
  }
}

class Moto extends Veiculo{
  double numCilindradas;
  bool hasPartidaEletrica;

  Moto(super.marca,super.modelo,super.anoFabricacao, this.numCilindradas, this.hasPartidaEletrica);

  @override
  void printInformacoes(){
    super.printInformacoes();
    print("Numero Cilindradas? $numCilindradas");
    print("Tem partida Eletrica: $hasPartidaEletrica");
  }
}
class Carro extends Veiculo{
  double quilometragem;
  int numeroPortas;

  Carro(super.marca,super.modelo,super.anoFabricacao, this.quilometragem, this.numeroPortas);

  @override
  void printInformacoes(){
    super.printInformacoes();
    print("Quilometragem: $quilometragem");
    print("Numero de Portas: $numeroPortas");
  }
}

void main(){
  Moto moto = Moto("Yamaha", "Pop 100", 2021, 150, true);
  Carro carro = Carro("Ford", "Ford Galaxie", 1967, 1200, 4);

  carro.printInformacoes();
  moto.printInformacoes();

  
}
