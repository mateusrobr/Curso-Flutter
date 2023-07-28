void main()async{
  Stream<List<String>> nameStream = Stream.value(["Joao", "Maria", "Amarildo"]);
  
  List<int> teste = [];
  await nameStream.forEach((evento){
    teste.addAll(evento.map((nome) => nome.length));
  });
  print(teste);
}
