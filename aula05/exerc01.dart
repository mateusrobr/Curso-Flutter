Future<String> fetchData (String searchCriterion, String localBeingSearched) async{
  var result = await localBeingSearched.contains(searchCriterion);
  if(result){
    return Future.delayed(Duration(seconds: 3), (){
      return "Dado Encontrado";
    });
  }
  else{
    return Future.delayed(Duration(seconds: 3), (){
      return "Dado não encontrado";
    });
  }
}

void main()async{
  Future<String> teste = fetchData("aaaaa", "TESTE TESTE TESTE");
  teste.then((resultado){
    print(resultado);
  });
}
