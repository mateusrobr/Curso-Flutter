import 'dart:io';
void main(){
  double num;
  print("Digite um numero> ");
  num = double.parse(stdin.readLineSync()!);
  
  if(num >= 10 && num <= 20){
    print("O valor esta entre 10 e 20");
  }
  else if(num == 0 || num == 50){
    print("O valor é igual a 0 ou 50");
  }
  if(num != 100 || num == 200){
    print("Diferente de 100 ou igual a 200");
  }
}
