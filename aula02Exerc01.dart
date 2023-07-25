class Calculadora{
  
  double direita;
  double esquerda;
  
  Calculadora(this.direita,this.esquerda);
  
  double soma(){
    return direita + esquerda;
  }
  
  double subtracao(){
    return direita - esquerda;
  }
  double multiplicacao(){
    return direita * esquerda;
  }
  
  double divisaoDouble(){
    return direita / esquerda;
  }
  
  int divisaoInt(){
    return direita ~/ esquerda;
   }
  
  double restoDivisao(){
    return direita % esquerda;
  }
}

void main(){
  
  Calculadora calculadora = Calculadora(10.0,5.0);
  print("Soma: ${calculadora.soma()}");
  print("Subtracao: ${calculadora.subtracao()}");
  print("Multiplicacao: ${calculadora.multiplicacao()}");
  print("DivisaoDouble: ${calculadora.divisaoDouble()}");
  print("DivisaoInt: ${calculadora.divisaoInt()}");
  print("Resto: ${calculadora.restoDivisao()}");
}
