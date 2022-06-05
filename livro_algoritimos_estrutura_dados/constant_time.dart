void main() {
  print('Benchmark test -> ${benchmark(
    () => checkFirst(
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

void checkFirst(List<String> names) {
  if (names.isNotEmpty) {
    print(names.first);
  } else {
    print('no names');
  }
}


//! À medida que os dados de entrada aumentam, a quantidade de tempo que o algoritmo leva não muda.
//! Por brevidade, os programadores usam uma maneira de escrever conhecida como notação Big O para representar
//! várias magnitudes de complexidade de tempo. A notação Big O para tempo constante é O(1).