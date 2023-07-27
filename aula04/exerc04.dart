class Veiculo{
  String marca;
  String modelo;
  int anoFabricacao;
  String ? adesivo;
  double precoBase;
  double ? precoFinal;

  Veiculo(this.marca, this.modelo, this.anoFabricacao,this.precoBase);

  void printInformacoes(){
    print("Marca: $marca");
    print("Modelo: $modelo");
    print("Ano de fabricação: $anoFabricacao");
    print("Preco base: $precoBase");
    print("Preco final: ${(precoFinal ?? 0)}");
    print("Adesivo: ${(adesivo ?? "")}");
  }
}

class Moto extends Veiculo{
  double numCilindradas;
  bool hasPartidaEletrica;

  Moto(super.marca,super.modelo,super.anoFabricacao,super.precoBase ,this.numCilindradas, this.hasPartidaEletrica){
    setAdesivo();
    setPrecoFinal();
  }
  
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
  void setPrecoFinal(){
    double adicionalCilindradas = 0.05 * numCilindradas;
    double adicionalPartidaEletrica;
    (hasPartidaEletrica) ? adicionalPartidaEletrica = 500 : adicionalPartidaEletrica = 0;

    super.precoFinal =  precoBase + adicionalCilindradas + adicionalPartidaEletrica;
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

  Carro(super.marca,super.modelo,super.anoFabricacao, super.precoBase, this.quilometragem, this.numeroPortas){
    setAdesivo();
    setPrecoFinal();
  }

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

  void setPrecoFinal(){
    double adicionalPortas = 1000.0 * numeroPortas;
    double adicionalQuilometros = 0.01 * quilometragem;

    super.precoFinal =  precoBase + adicionalPortas + adicionalQuilometros;
  }
  @override
  void printInformacoes(){
    super.printInformacoes();
    print("Quilometragem: $quilometragem");
    print("Numero de Portas: $numeroPortas");
  }
}

void main(){
  Moto moto = Moto("Yamaha", "Pop 100", 2021,10000 ,150, true);
  //moto.setAdesivo();
  //moto.setPrecoFinal();
  Carro carro = Carro("Ford", "Ford Galaxie", 1967,10000 ,1200, 4);
  //carro.setAdesivo();
  //carro.setPrecoFinal();

  carro.printInformacoes();
  moto.printInformacoes();

  
}
