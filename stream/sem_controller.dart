import 'dart:async';

void main() async {
  //entrada
  // final stream = Stream.value(0);

  //simulando varios exemplo de entrada
  final stream = Stream.fromIterable([0, 1, 2, 3, 5, 7]);

  //saida
  //Eu preciso ter apenas uma saida para poder escutar quantos eventos eu quiser
  stream.listen((event) {
    print(event);
  }, onError: (e, s) {
    print(e);
    print(s);
  });

  await Future.delayed(const Duration(seconds: 5));
}
