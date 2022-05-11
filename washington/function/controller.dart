class Controller {
  //? essa função faria a mesma coisa que dar um 'print(element)' dentro do forEach
  void printElement(int element) => print(element);

  //? podemos tambem atribuir essa função em uma variavel ai ela vai passar sobre os elementos da lista2 e multiplicar por 2
  var calcularElement = (int element) => print(element * 2);

  //! agora com essas função e essa variavel dentro dessa classe eu posso utiliza-la em todo meu projeto
}
