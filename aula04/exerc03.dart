class Veiculo{
  String marca;
  String modelo;
  int anoFabricacao;
  String ? adesivo;

  Veiculo(this.marca, this.modelo, this.anoFabricacao);

  void printInformacoes(){
    print("Marca: $marca");
    print("Modelo: $modelo");
    print("Ano de fabricação: $anoFabricacao");
    print("Adesivo: ${(adesivo ?? "")}");
  }
}

class Moto extends Veiculo{
  double numCilindradas;
  bool hasPartidaEletrica;

  Moto(super.marca,super.modelo,super.anoFabricacao, this.numCilindradas, this.hasPartidaEletrica);

  void setAdesivo(){
    if(numCilindradas < 125){
      super.adesivo = "Leve";
    }
    else if(numCilindradas >= 125 && numCilindradas < 500){
      super.adesivo = "normal";
    }
    else{
      super.adesivo = "esportiva";
    }
  }
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

  void setAdesivo(){
    if(quilometragem < 15000){
      super.adesivo = "Seminovo";
    }
    else if(quilometragem >= 15000 && quilometragem < 20000){
      super.adesivo = "Usado";
    }
    else{
      super.adesivo = "antigo";
    }
  }
  @override
  void printInformacoes(){
    super.printInformacoes();
    print("Quilometragem: $quilometragem");
    print("Numero de Portas: $numeroPortas");
  }
}

void main(){
  Moto moto = Moto("Yamaha", "Pop 100", 2021, 150, true);
  moto.setAdesivo();
  Carro carro = Carro("Ford", "Ford Galaxie", 1967, 1200, 4);
  carro.setAdesivo();

  carro.printInformacoes();
  moto.printInformacoes();

  
}
