import 'dart:io';

//!Conta regra de 3
// 200(a) ------ 100(b)
//  x  ------ 75(c)
// result x = 150

void main() {
  print('Primeiro valor A:');
  double a = double.parse(stdin.readLineSync() ?? '');
  print('Segundo valor B:');
  double b = double.parse(stdin.readLineSync() ?? '');
  print('Terceiro valor C:');
  double c = double.parse(stdin.readLineSync() ?? '');

  double x = a * (c / b);

  print('x = ${x.toStringAsFixed(2)}');
}
