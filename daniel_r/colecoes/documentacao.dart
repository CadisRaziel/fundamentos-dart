void main() {
  //?Entendendo a documentação

  //<E> -> Representa a tipagem
  // List<E> nome = [];

  //!Repare nas setinhas !! o '=' ta dizendo o que elas fazem
  //first <-> E = esta dizendo que vai retornar a tipagem
  //hashCode -> int = vai retornar um inteiro
  //isEmpty -> bool = vai retornar um true ou false

  //? esses retornos servem para nos atribuirmos variaveis
  List<int> listinha = List.generate(10, (index) => index * 10);
  bool temValor = listinha.any((element) => element % 33 == 0);
  print(temValor);
  //? O any aqui ele tem um retorno que é true ou falso então a variavel deve ser bool
}
