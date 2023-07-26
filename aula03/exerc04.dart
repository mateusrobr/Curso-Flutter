import 'dart:io';
double somaNotas(List<double> notas){
  
  return notas.reduce((value, element) => value + element);
}

double mediaNotas(Function somaNotas, List<double> notas){
  return somaNotas(notas) / notas.length;
}

void main(){
  List<double> notas = [];
  //bool verifier = true;
  while(true){
    print("Se deseja parar só digite um caracter que nao seja numerico");
    print("Digite a nota: ");
    double ? nota = double.tryParse(stdin.readLineSync()!);
    if(nota == null){
      break;
    }
    notas.add(nota ?? 0);
  }

  print("Media das notas é: ${mediaNotas(somaNotas,notas)}");
}