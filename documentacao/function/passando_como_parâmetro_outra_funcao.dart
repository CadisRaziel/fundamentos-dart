import 'controller.dart';

void main() {
  Controller _controller = Controller();

  List<int> lista = [4, 5, 6];
  List<int> lista2 = [10, 20, 30];

  //! Repare que o paremtro dessas funções espera um inteiro, então no controller construimos ele com parametros de inteiros
  lista.forEach((element) {
    _controller.printElement(element);
  });

  lista2.forEach((element) {
    _controller.calcularElement(element);
  });
}
