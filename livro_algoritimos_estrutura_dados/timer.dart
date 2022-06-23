void main() {
  final start = DateTime.now();
  final sum = sumFromOneTo(10000);
  final end = DateTime.now();
  final time = end.difference(start);
  print(start);
  print(sum);
  print(end);
  print(time);
}

int sumFromOneTo(int n) {
  var sum = 0;
  for (var i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}

// int betterSumFromOneTo(int n) {
//   return n * (n + 1) ~/ 2;
// }
