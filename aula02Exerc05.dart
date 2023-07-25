import 'dart:io';
void main(){
  List<String> diasSemana = [
                 'Segunda-Feira',
                 'Terca-Feira',
                 'Quarta-Feira',
                 'Quinta-Feira',
                 'Sexta-Feira',
                 'Sábado',
                'Domingo'];
  int diaSemana;
  print("Digite sua idade: ");
  diaSemana = int.parse(stdin.readLineSync()!);
  diaSemana--;

  if(diaSemana >= 0 && diaSemana < 7){
    print(diasSemana[diaSemana]);
  }
  else{
    print("Dia inválido");
  }
}
