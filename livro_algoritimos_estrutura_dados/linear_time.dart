void main() {
  print('Benchmark test -> ${benchmark(
    () => printNames(
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

void printNames(List<String> names) {
  for (final name in names) {
    print(name);
  }
}


//! A complexidade de tempo linear é geralmente a mais fácil de entender. Como a quantidade de dados
//! aumenta, o tempo de execução aumenta na mesma quantidade. É por isso que você tem o
//! gráfico linear reto ilustrado acima. A notação Big O para tempo linear é O(n).