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

void main(){
  Veiculo veiculo = Veiculo("Ford", "Ford Galaxie", 1967);

  veiculo.printInformacoes();

  
}
