import 'dart:async';

void main() async {
  //controlador
  final controller = StreamController<int>.broadcast();

  //entrada
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);

  //saida
  //Como ele ja tem um ouvinte temos que usar o .broadcast no controller
  controller.stream.listen((event) {
    print('Listen 1 -> $event');
  }, onError: (e, s) {
    print(e);
    print(s);
  });

  controller.stream.listen((event) {
    print('Listen 2 -> $event');
  }, onError: (e, s) {
    print(e);
    print(s);
  });
}
