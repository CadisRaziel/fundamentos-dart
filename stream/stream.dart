import 'dart:async';

void main() {
  final controller = StreamController<String>(
    onListen: () => print('=====Escutou====='),
    onCancel: () => print('=====Cancelou====='),
    onPause: () => print('=====Pausou====='),
  );

  print("haslistener: ${controller.hasListener.toString()}"); //false

  controller.sink.add("Dart");
  controller.sink.add("C++");
  controller.sink.add("C");
  controller.sink.add("Python");

  controller.stream.listen(
    (languages) {
      print(languages);
    },
    onDone: () => print('=====Finalizou====='),
    onError: (error) => print(error),
  );

  print("haslistener: ${controller.hasListener.toString()}"); // true

  controller.close();
}
