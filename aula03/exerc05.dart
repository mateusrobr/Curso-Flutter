import 'dart:io';

double discountApplier(double price) => price * 50/100;

void main(){
  print("Qual o preço do produto: ");
  double ? price = double.tryParse(stdin.readLineSync()!);

  double finalPrice = (price ?? 0) - discountApplier(price ?? 0);

  print("Preço final com disconto: $finalPrice");
}