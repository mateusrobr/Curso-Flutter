import 'dart:io';
void main(){
  int idade;
  print("Digite sua idade: ");
  idade = int.parse(stdin.readLineSync()!);
  
  (idade >=18) ? print("Voce é maior de idadade") : print("Voce é menor de idade");
}
