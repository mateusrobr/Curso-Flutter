import 'dart:io';
void main(){
  int idade;
  print("Digite sua idade: ");
  idade = int.parse(stdin.readLineSync()!);
  
  if(idade >= 18){
    print("Voce é maior de idade!");
  }
  else{
    print("Voce é menor de idade");
  }
}
