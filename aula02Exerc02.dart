mport 'dart:io';
void main(){
  double num;

  num = double.parse(stdin.readLineSync()!);
  
  if(num % 2 != 0){
    print("impart");
  }
  else{
    print("par");
  }
}
