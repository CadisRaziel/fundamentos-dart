void main() {
  List<String> nomes = ['Vitor', 'Bz'];
  List nomes1 = <String>['Vitor', 'Bz'];
  List<int> numeros = [1, 2, 3, 4, 5];

  //add -> insere de 1 em 1
  numeros.add(5);

  //addAll -> insere varios de uma so vez
  numeros.addAll([15, 20, 30, 40, 50]);

  //insert -> colocamos o elemento na posição que queremos (ele vai colocar o -1 no indice 0)
  numeros.insert(0, -1);

  //contains -> pra verificar se contem o numero que passarmos ou string ou etc..
  numeros.contains(0);

  //indexOf -> para encontrar o indice do elemento
  numeros.indexOf(0);

  //remove -> vai remover 1 item da lista
  numeros.remove(0);

  //removeAt -> remove pelo indice (ele retorna o numero removido)
  numeros.removeAt(2);

  //Shuffle -> embaralha os numeros ou string da lista
  numeros.shuffle();

  //clear -> limpa a lista
  numeros.clear();

  //List.from -> Pega uma lista que existe e atribui a uma variavel
  final numbers = [1, 2, 3];
  final listFrom = List.from(numbers);
  print(listFrom); // [1, 2, 3]

  //?Tudo que for diferente de 5 ele vai remover
  //  var unfilteredDevices = List.from(response.data['data']);
  //       unfilteredDevices.removeWhere((element) => element['type'] != 5);
  //       Map<String, dynamic> filteredDevices = {
  //         'status': 200,
  //         'data': unfilteredDevices
  //       };
  //!Preste sempre atenção nessas funções pois ela costuma retornar algo (deixe o mouse em cima e veja se tem algum retorno)
}
