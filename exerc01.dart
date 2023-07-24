class Aluno{
  String ? _nome;
  int ? _idade;
  double ? _peso;
  Map<dynamic, dynamic>  _disciplinasNotasMap;
  String ? endereco;
  bool ? _ehNovato;
  String ? redacaoFerias;
  
  Aluno(this._nome, this._idade, this._peso, this._disciplinasNotasMap, this._ehNovato, {this.redacaoFerias,this.endereco}){
    
  }
  
  void atribuirDisciplinaNota(String disciplina, double nota){
    if(_disciplinasNotasMap.length > 4){
      print("Ja temos 4 disciplinas");
      return;
    }
    _disciplinasNotasMap.addAll({disciplina : nota});
  
  }
  void corrigirErrosRedacao(){
    redacaoFerias = redacaoFerias?.replaceAll("mais melhor", "melhor");
    print("Teste");
  }
  void atribuirRedacao(String redacaoFerias){
    if(redacaoFerias.contains("Ferias") && redacaoFerias.split(" ").length > 10){
      this.redacaoFerias = redacaoFerias;
      corrigirErrosRedacao();
      return;
    }
    print("Redacao invalida");
  }
  void printAluno(){
    print("Nome: $_nome");
    print("Idade: $_idade");
    print("Peso: $_peso");
    print(endereco ?? "Sem endereco");
    print("Eh novato: $_ehNovato");
    print("Disciplinas e suas notas: ");
    _disciplinasNotasMap.forEach((disciplina,nota) => print("Disciplina: $disciplina e Nota: $nota"));
    print("Redacao: $redacaoFerias");
  }
}
void main() {
  Aluno aluno1 = Aluno("Luiz", 20, 60.00, {}, true);
  aluno1.atribuirDisciplinaNota("Portugues", 7.0);
  aluno1.atribuirDisciplinaNota("Matematica", 10.0);
  aluno1.atribuirDisciplinaNota("Estudados Amazonicos", 1.0);
  aluno1.atribuirDisciplinaNota("Geografia", 5.0);
  aluno1.atribuirRedacao("Ferias a a a a a a a a a a a a a a a a a a a a a mais melhor");
  aluno1.printAluno();
}
