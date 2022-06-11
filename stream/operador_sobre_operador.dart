import 'dart:async';

void main() async {
  //controlador/tipando o controller
  final controller = StreamController<int>();

  //transformando a entrada
  //Usando varios operadores na mesma stream
  //lembre-se esse é um passo a passo, conforme a ordem que for colocada errada pode dar erro
  final streamString1 = controller.stream
      .distinct()
      .where((event) => event != 1)
      .asyncMap<String>(exemploAsync);

  //*where -> tudo que for diferente de 1 vai ser printado
  //*distinct -> se tiver mais de um numero igual só sera printado 1
  //!Repare na sequencia e na nossa tomada de decisão

  //entrada INTEIRO
  controller.sink.add(0);
  controller.sink.add(0);
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);

  //saida STRING
  //a saida é uma string por conta do operador map que converteu o int por string !
  //como fez a conversão ? o retorno colocamos como string
  //usando com o asyncMap
  streamString1.listen((event) {
    print(event);
  }, onError: (e, s) {
    print(e);
    print(s);
  });

  await Future.delayed(const Duration(seconds: 5));
}

Future<String> exemploAsync(int value) async {
  await Future.delayed(const Duration(seconds: 2));
  return 'Convertido $value';
}
