import 'dart:io';
void main(){
  double num;

  num = double.parse(stdin.readLineSync()!);
  
  
  (num % 2 != 0) ? print("impar") : print("par");
}
