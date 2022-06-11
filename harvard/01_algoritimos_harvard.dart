import 'dart:io';

void main() {
  int height = int.parse(stdin.readLineSync() ?? '');

  print('Benchmark test -> ${benchmark(() => draw(height))}');
}

Duration benchmark(Function fn) {
  final sw = Stopwatch();
  sw.start();
  fn();
  return sw.elapsed;
}

//! primeiro exemplo
void draw(int n) {
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < i + 1; j++) {
      print('#');
    }
    print('\n');
  }
}

//! segundo exemplo (mais rapido)
// void draw(int n) {
  //? simplesmente antes pergunto se for igual ou menor que 0 ele nao vai fazer a funçao !!
  //? se nao tiver essa verificação aqui antes o loop no for seria eterno e daria um erro
//   if (n <= 0) {
//     return;
//   }
//   draw(n - 1);
//   for (int i = 0; i < n; i++) {
//     print('#');
//   }
//   print('\n');
// }


//mesclagem de dados forma mais eficiente