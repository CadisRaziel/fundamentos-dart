import 'dart:async';

void main() async {
  //controlador/tipando o controller
  final controller = StreamController<int>.broadcast();

  //isolando a stream e colocando um operador
  //map -> converte um tipo por outro(a entrada é um int, porém vai sair uma string)
  //como fez a conversão ? o retorno colocamos como string
  //Posso tipar como string tambem !!
  final streamString =
      controller.stream.map<String>((event) => 'convertido $event');

  //podemos utilizar funções async tambem com o asyncMap
  //posso pegar uma função externa async
  // porém repare nos nomes do map !!
  final streamString1 = controller.stream.asyncMap<String>(exemploAsync);

  //entrada INTEIRO
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);

  //saida STRING
  //a saida é uma string por conta do operador map que converteu o int por string !
  //como fez a conversão ? o retorno colocamos como string
  streamString.listen((event) {
    print(event);
  }, onError: (e, s) {
    print(e);
    print(s);
  });

  //usando com o asyncMap
  // streamString1.listen((event) {
  //   print(event);
  // }, onError: (e, s) {
  //   print(e);
  //   print(s);
  // });

  await Future.delayed(const Duration(seconds: 5));
}

Future<String> exemploAsync(int value) async {
  await Future.delayed(const Duration(seconds: 5));
  return 'Convertido $value';
}
