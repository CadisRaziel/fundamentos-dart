void main() {
  print('Benchmark test -> ${benchmark(
    () => printMoreNames(
      [
        'Vitor',
        'Vitor1',
        'Vitor2',
        'Vitor3',
        'Vitor4',
        'Vitor5',
        'Vitor6',
        'Vitor7',
        'Vitor8',
        'Vitor9'
      ],
    ),
  )}');
}

Duration benchmark(Function fn) {
  final sw = Stopwatch();
  sw.start();
  fn();
  return sw.elapsed;
}

void printMoreNames(List<String> names) {
  for (final _ in names) {
    print('Lista 1 $names');
    for (final name in names) {
      print('Lista 2 $name');
      print(name);
    }
  }
}
//Quadratic Time:
// a função imprime todos os nomes na lista para cada nome na lista.
// Se você tiver uma lista com dez dados, ela imprimirá a lista completa de dez nomes dez vezes

//! À medida que o tamanho dos dados de entrada aumenta, a quantidade de tempo que leva para o algoritmo
//! correr aumenta drasticamente. Assim, algoritmos de n quadrados não funcionam bem em escala.
//! A notação Big O para tempo quadrático é O(n²).