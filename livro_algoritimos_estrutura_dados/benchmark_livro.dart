void main() {
  print('Benchmark test -> ${benchmark(() => sumFromOneTo(10000))}');
}

Duration benchmark(Function fn) {
  final sw = Stopwatch();
  sw.start();
  fn();
  return sw.elapsed;
}

int sumFromOneTo(int n) {
  var sum = 0;
  for (var i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}

// int sumFromOneTo(int n) {
//   return n * (n + 1) ~/ 2;
// }
