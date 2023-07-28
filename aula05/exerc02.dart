Stream<int> countDown(int maximumValue) async*{
  for(int i = 1 ; i <= maximumValue ; i++){
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}
void main()async{
  final Stream<int> teste = countDown(5);

  teste.listen((number){
    print("number $number");
  });
}
