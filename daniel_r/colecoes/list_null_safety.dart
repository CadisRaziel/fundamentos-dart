void main() {
  //essa lista abaixo nao aceita nullo
  List<String> lista1 = ['nana', 'babab'];

  //a lista abaixo aceita valores null
  List<String?> lista2 = ['nana', 'babab', null];

  //a lista abaixo aceita nao ser inicializada (ou seja essa lista ainda não existe)
  List<String>? lista3;

  //essa lista esta vazia e existe
  List<String> lista4 = [];

  //? diferença entre uma lista 'sem inciializar' e uma lista 'inicializada porém vazia'

  //? essa lista aceita os parametros normais
  List<String> lista5 = [];
  lista5.add('5');

  //ja a lista que nao existe, ela não aceita parametros normais
  List<String>? lista6;
  lista6.add('5');

  //E temos essa lista que pode tanto ter valores nullos quanto ela não precisa ser inicializada
  List<String?>? lista7;
}
