import 'dart:io';
import 'dart:math';
void main(){
  Random randomNumberGenerator = Random();
  int randomNumber = randomNumberGenerator.nextInt(11);
  int ? guess;
  while(true){
    do{
      print("Digite o número: ");
      guess = int.tryParse(stdin.readLineSync()!);
    }
    while(guess == null);

    
    if((guess ?? 0) == randomNumber){
      print("Voce acertou!");
      break;
    }
    else if((guess ?? 0) > randomNumber){
      print("Seu número é maior que o numero gerado!");
    }
    else{
      print("Seu número é menor que o numero gerado!");
    }
  }
}