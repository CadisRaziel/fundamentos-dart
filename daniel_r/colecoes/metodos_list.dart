void main() {
  //List.filled -> Cria uma lista com a quantidade de itens e o valor do item que quero
  //ou seja, vai criar 100 itens com o numero 8
  List<int> maluca = List.filled(100, 8);

  //List.generate -> Para fazer o numero subir de 10 em 10 começando no numero 0 (porém eu posso utlizar como um filled tambem)
  List<int> doida = List.generate(10, (index) => index * 10);

  //any -> para saber se a lista tem multiplo de 10
  print(doida.any((index) => index % 20 == 0));

  //firstWhere -> encontrando o primeiro multiplo de 40 (Primeiro item da lista, retorna apenas 1 ITEM)
  print(doida.firstWhere((index) => index % 40 == 0));

  //lastWhere -> encontrando o ultimo multiplo de 40 (Ultimo item da lista, retorna apenas 1 ITEM)
  print(doida.lastWhere((index) => index % 40 == 0));

  //where -> diferente de firswhere e lastwhere que só retorna 1 ITEM o where retorna todos os resultados que fazem sentido na condição
  print(doida.where((index) => index % 40 == 0));

  //map -> Imagina que queremos que ao invez de printar 10, 20, 30, queremos que print 11,21,31 (nos gera uma nova lista com os dados incrementado)
  //O map esta mapeando os valores de uma lista para a nova lista
  print(doida.map((index) => index + 1));

  var numbers = ['one', 'two', 'three', 'four'];
  numbers.removeWhere((item) => item.length == 3);
  print(numbers);
}
