import 'dart:async';

void main() async {
  //controlador/tipando o controller
  final controller = StreamController<int>();

  //isolando a stream
  final stream = controller.stream;

  //entrada
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);

  //saida
  //Eu preciso ter apenas uma saida para poder escutar quantos eventos eu quiser
  controller.stream.listen((event) {
    print(event);
  }, onError: (e, s) {
    print(e);
    print(s);
  });

  await Future.delayed(const Duration(seconds: 5));
}
