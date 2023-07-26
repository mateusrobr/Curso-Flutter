import 'dart:io';
void main(){
  print("Qual o valor máximo: ");
  double ? maximumValue = double.tryParse(stdin.readLineSync()!);

  Map<dynamic,dynamic> productNamePriceMap = {};
  while(true){
    print("Qual o novo produto: ");
    String ? newProduct = stdin.readLineSync();
    print("Qual o preço de $newProduct:");
    double ? priceNewProduct = double.tryParse(stdin.readLineSync()!);
    if(priceNewProduct == null){
      break;
    }

    productNamePriceMap[newProduct] = priceNewProduct;
  }

  productNamePriceMap.forEach((productName,price) => (price < maximumValue && price % 2 == 0) ? print("Nome do produto: $productName. Preco do produto: $price") : print(""));
}